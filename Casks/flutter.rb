cask "flutter" do
  arch arm: "_arm64"

  version "3.10.4"
  sha256 arm:   "878dbe48e16d2843850418d435935b368f98c1554fb8e89841e2c737f2e6d3f3",
         intel: "fe9f4967d62ef4f99e9b7c04e26645ebd490aa2da8feeb19fd88db3b03f0d7b5"

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
