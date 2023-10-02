cask "flutter" do
  arch arm: "_arm64"

  version "3.13.6"
  sha256 arm:   "57ac41815a21edc5c0b14742d7f64d00219afa110dbbb9953f0561108ee85487",
         intel: "ad5d9b6a667a2f8ce2cf8798ea6480ad75bdd3f7888fa4f180ffa74db44ba1de"

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
