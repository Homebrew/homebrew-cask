cask "flutter" do
  arch arm: "_arm64"

  version "3.10.6"
  sha256 arm:   "02ec7d7805b45e65bbc42b6b48bd22523e58d9d2fc36ab443c12ba8535802158",
         intel: "64e6b722e9ebdf9ccc83ef9253f24a3c0519d103e622aeb0c0e7c7647636f1a5"

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
