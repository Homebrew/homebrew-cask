cask "flutter" do
  arch arm: "_arm64"

  version "3.7.12"
  sha256 arm:   "fd2f49a27ebbe9533b6b45df33bf057cb11d7cc12a973bad79d2c21291430e20",
         intel: "80fa676172c410eda0761cff5bac0584729164b50b12f47e6d08cac2b766d593"

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
