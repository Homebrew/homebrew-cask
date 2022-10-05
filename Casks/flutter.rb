cask "flutter" do
  arch arm: "_arm64_", intel: "_"

  version "3.3.4"
  sha256 arm:   "a6825b56fcb789a48cc7c657c9ad24498743f0d35402364c0a9f020dbf895545",
         intel: "3a39f0cadae5cf4fb1d634c9ec1c7564ccf1bf78d0cd6418e72e037ab8422f7b"

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
