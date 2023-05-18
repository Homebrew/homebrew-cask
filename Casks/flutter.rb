cask "flutter" do
  arch arm: "_arm64"

  version "3.10.1"
  sha256 arm:   "642a7ead09ab798c97b17fb6bb8c7e8887b16a2e3d02e2adc4b2d703c40a2e67",
         intel: "d64c09d8651cf32552ab43be723967bb340f653a5d69fc971de92460a256a69d"

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
