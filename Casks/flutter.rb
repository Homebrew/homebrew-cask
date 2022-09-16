cask "flutter" do
  arch arm: "_arm64_", intel: "_"

  version "3.3.2"
  sha256 arm:   "bf59ede182ac9a675cb9f2a3e2ba70b8b3e94a0a22efdebd37cc5e3b57aa37e0",
         intel: "25f35d79b008e131d3d81c2bc29ef3d3e6508f2f9fcda3683f58a4216b8b06c9"

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
