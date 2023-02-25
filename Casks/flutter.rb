cask "flutter" do
  arch arm: "_arm64_", intel: "_"

  version "3.7.5"
  sha256 arm:   "aec66d79633dafa37d5fd00bcec366993921e802050728c5b2e0c3478fd2076f",
         intel: "653961c303d34eed4ca976b814ee3f4a15078fa743e454c77624a5fe3299c5bd"

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
