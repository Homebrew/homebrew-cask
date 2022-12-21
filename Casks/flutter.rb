cask "flutter" do
  arch arm: "_arm64_", intel: "_"

  version "3.3.10"
  sha256 arm:   "af7e59fdfe8ac24cf553a65a89c22ac364d7bf6b35c73631254f19e2c1e4cbc1",
         intel: "5429d0f71bf3bfbe84c31f3ecf4c721babf51bce1b301ef2be5cbbaafa94410c"

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
