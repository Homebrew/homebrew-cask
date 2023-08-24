cask "flutter" do
  arch arm: "_arm64"

  version "3.13.1"
  sha256 arm:   "c47f3f2846cc62bb8da568e47d2afff02c947e1b07c83154debc96cc35de6474",
         intel: "2d8da51a64a83c01c0817a45b957f97ef58e7942713e3253646abbfc25a55db0"

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
