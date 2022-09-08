cask "flutter" do
  arch arm: "_arm64_", intel: "_"

  version "3.3.1"
  sha256 arm:   "648761d29335ab002ab0f0757f2392b73de09b0d4d8fae153eb49fb619c66837",
         intel: "e6c53c683082272feed6514fe003a793955935f3ea04485e1ccd44a05da1cc1e"

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
