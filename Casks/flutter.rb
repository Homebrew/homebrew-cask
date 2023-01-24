cask "flutter" do
  arch arm: "_arm64_", intel: "_"

  version "3.7.0"
  sha256 arm:   "6e7132bac441400432129ebb54e5dede6ab76f0dbea58370090249048a2dd013",
         intel: "501dc6254c1bb158998d5d3bd65f79b8e966f991518da0cc6ed6c6d4e2772ec3"

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
