cask "flutter" do
  arch arm: "_arm64"

  version "3.13.7"
  sha256 arm:   "5850b03cef8d1c62649a0632c17728e7bc5479699eb105a942ff3802e8488db0",
         intel: "355a38e41bba28639aeb8d8450ec4887498264d0b3ec4fd12e582b70e11028d1"

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
