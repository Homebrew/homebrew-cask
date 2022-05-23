cask "flutter" do
  arch = Hardware::CPU.intel? ? "_" : "_arm64_"

  version "3.0.1"

  if Hardware::CPU.intel?
    sha256 "20d96acdc49f877e533697300228b58108b18a970e29184d8477c01889218ce9"
  else
    sha256 "f34e34f8cf247d4f6fde3f7e9e6753d15ff7f6e88bda232df13c009514896163"
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
