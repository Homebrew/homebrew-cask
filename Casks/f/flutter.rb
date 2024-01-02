cask "flutter" do
  arch arm: "_arm64"

  version "3.16.5"
  sha256 arm:   "c731cdcb8a096cbe18393a2b9a37ffa8b672d633d5bdd2a932c52e4b8236b399",
         intel: "faece94b93178db24053897577f6b288af8908e513c3041f994a0398efb4b977"

  url "https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos#{arch}_#{version}-stable.zip",
      verified: "storage.googleapis.com/flutter_infra_release/releases/stable/macos/"
  name "Flutter SDK"
  desc "UI toolkit for building applications for mobile, web and desktop"
  homepage "https://flutter.dev/"

  livecheck do
    url "https://storage.googleapis.com/flutter_infra_release/releases/releases_macos.json"
    regex(%r{/flutter[._-]macos[._-]v?(\d+(?:\.\d+)+)[._-]stable\.zip}i)
  end

  auto_updates true

  binary "flutter/bin/dart"
  binary "flutter/bin/flutter"

  postflight do
    # Allow existing shell profiles to work by linking the current version to the `latest` directory.
    unless (latest_path = staged_path.dirname/"current").directory?
      FileUtils.ln_s staged_path, latest_path, force: true
    end
  end

  zap trash: "~/.flutter"

end
