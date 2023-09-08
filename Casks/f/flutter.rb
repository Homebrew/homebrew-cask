cask "flutter" do
  arch arm: "_arm64"

  version "3.13.3"
  sha256 arm:   "8d4000d20d74837726d8d72b164f1f8927884bdcc39d3c4987762747a96c886c",
         intel: "e9069303e0b8b1873c26fb08f59a8f50d7265a04e5dfbbf40f5965162a952be8"

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
