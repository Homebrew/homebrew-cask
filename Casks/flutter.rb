cask "flutter" do
  arch = Hardware::CPU.intel? ? "_" : "_arm64_"

  version "3.0.2"

  if Hardware::CPU.intel?
    sha256 "7fc88b2944495c20e013c83c4e0bfcd40d258d9fb52ddbde5c0771e207c9ff29"
  else
    sha256 "734874caac4928d86a7bba8aa843e5c0577ccb1051df551db41dd1e4d64b6d9e"
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
