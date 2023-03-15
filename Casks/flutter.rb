cask "flutter" do
  arch arm: "_arm64"

  version "3.7.7"
  sha256 arm:   "0511b9f164a62f467b063e6c83d9c683bb3fb056ee556b2f45e987a2c2f4a260",
         intel: "78957b52f023a0d811add27eddc59b1a59d27d2ada5df123f39d0315708fb2d5"

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
