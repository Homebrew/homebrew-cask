cask "flutter" do
  arch arm: "_arm64_", intel: "_"

  version "3.7.1"
  sha256 arm:   "70a8ae5e7ff360827e6dd7facc69c0e5965674449c4f389d994d3c2ffbb2647d",
         intel: "3a6fd3c151d8247785bb3c296ea2c132aaa8f6f2bf2120c7495e3b61e7ab6dc5"

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
