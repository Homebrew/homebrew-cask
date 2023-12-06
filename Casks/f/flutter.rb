cask "flutter" do
  arch arm: "_arm64"

  version "3.16.3"
  sha256 arm:   "ca0a61fc594adff123521cc72e84bfdec0dfdb58c49f3e7e0f82c3969da77446",
         intel: "0230d67d13817b65e2006bcd3330d72e4161f5c10b558afd1c72a818cd7c578e"

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
