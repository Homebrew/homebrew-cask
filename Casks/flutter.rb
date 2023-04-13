cask "flutter" do
  arch arm: "_arm64"

  version "3.7.11"
  sha256 arm:   "9ec2fcc27559a32a8d8287fb49bafd04b5b524bf8ba72076dc2ffad0d3b718b5",
         intel: "b1c89fbf1764752045355e82b0f5dec08d64646798c1a7d846c13757fa9b04ef"

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
