cask "flutter" do
  arch arm: "_arm64_", intel: "_"

  version "3.7.3"
  sha256 arm:   "6b4eda9371094ca2cdaae944f91a0a95d1f71803dcae0d01f899edf8aa4f58a1",
         intel: "41032963628ef651a81833af202ca6b636b49411c3710030898ed4277d636595"

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
