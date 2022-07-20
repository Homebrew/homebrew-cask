cask "flutter" do
  arch = Hardware::CPU.intel? ? "_" : "_arm64_"

  version "3.0.5"

  if Hardware::CPU.intel?
    sha256 "e79a04dcfd1b583e5831433fc200800ba0d1e9fe4567cb661479bd2542d4c685"
  else
    sha256 "d1d09e8d3647729338446965f63a59f3400b4a3f04efbcc9040628def81e6ecf"
  end

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
