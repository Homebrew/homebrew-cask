cask "flutter" do
  arch arm: "_arm64"

  version "3.13.4"
  sha256 arm:   "cbab15002679d640db33faf5c9b02a8b40f9a586aa8c3e7caa5a04cb95a9e079",
         intel: "60e53fc2e094bc808eab4e66280e1c88fd19bf8a1e36660d92a8a1095d92acb2"

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

  zap trash: "~/.flutter"
end
