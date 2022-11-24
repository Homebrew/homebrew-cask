cask "flutter" do
  arch arm: "_arm64_", intel: "_"

  version "3.3.9"
  sha256 arm:   "872c8ecf32be88424e84e619fb53b4dd083ddae3e9bfd15a2caf14f624055d98",
         intel: "07c0601c9c8465ee7a165f621869b0690b4bce283dbb293c7ece9206f6914735"

  url "https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos#{arch}#{version}-stable.zip",
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

  zap trash: "~/.flutter"
end
