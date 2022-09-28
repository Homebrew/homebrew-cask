cask "flutter" do
  arch arm: "_arm64_", intel: "_"

  version "3.3.3"
  sha256 arm:   "41828809900dfc7cf0ef7027f83858b02a3824dc3eeee5b408726321414eddca",
         intel: "d6676dbe5aeedf8f4eff6f75fb632d6101cf1a357dee207d36ae9e7b30e197df"

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
