cask "flutter" do
  arch arm: "_arm64"

  version "3.13.8"
  sha256 arm:   "e74b80fbfb25cb208ac3c965ebfbcad05e80b685bc049a07164d0602e33d29c5",
         intel: "d476720818e82c5538829fe745a1be63a4d25e81ee27bfe97b2bbfab6973dd60"

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
