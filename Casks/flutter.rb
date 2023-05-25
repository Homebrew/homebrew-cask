cask "flutter" do
  arch arm: "_arm64"

  version "3.10.2"
  sha256 arm:   "3a92770002719c1e54cd61ac83354a70d8be6ad29379dc39ef2ed2219ee1f40d",
         intel: "7ec3f9da7d90af54a65e6701cde60483c00f6adad76dadd295e30f3c5bfc1e56"

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
