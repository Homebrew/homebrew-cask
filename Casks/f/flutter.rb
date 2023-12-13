cask "flutter" do
  arch arm: "_arm64"

  version "3.16.4"
  sha256 arm:   "81478af1711788297db41fafc0447f61237a3bcda0d0f7e7b4bb858ea0a89515",
         intel: "547a36326907eaf660ae14bd4ab187cbf1139ce949e81c765bbfebe93779a35e"

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
