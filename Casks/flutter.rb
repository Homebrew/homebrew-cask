cask "flutter" do
  arch arm: "_arm64"

  version "3.10.5"
  sha256 arm:   "62d3d273b4668fc64fcde5a1836b8bc98de6da97187d46004de78d2e1723ac89",
         intel: "74f72d2b99fd24b0e29e29d4da4048788441ac7969cd8609483452c81ce87c90"

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
