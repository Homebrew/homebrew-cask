cask "flutter" do
  arch arm: "_arm64"

  version "3.13.9"
  sha256 arm:   "374615f834f23cff70eaef3ef1c3ebd3f8246ebf4c7b7f100115c98bb32858bb",
         intel: "c14436a8b968d56616d8c99f646470160840f1047fd11e8124493c1c2706c4bf"

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
