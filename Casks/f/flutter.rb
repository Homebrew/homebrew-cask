cask "flutter" do
  arch arm: "_arm64"

  version "3.16.0"
  sha256 arm:   "d00b595277a02558dadfe6045c1e8af3faae7153a8fd7ad4389e47d951c6d247",
         intel: "6419ba31ffbe7d549f38e7f35cdcb101aabec8cefb32bd71a86ba08b3b3abd99"

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
