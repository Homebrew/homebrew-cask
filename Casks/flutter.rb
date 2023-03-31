cask "flutter" do
  arch arm: "_arm64"

  version "3.7.9"
  sha256 arm:   "3fd3929126dd67d12282aa1ceb75efa8a7f9af7951dba93d3c40aa73e166f187",
         intel: "07cd35d0a462e7aa948150a2104ce6fdf793b85935eba8ed93a6723eb999126b"

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
