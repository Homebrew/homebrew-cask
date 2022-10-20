cask "flutter" do
  arch arm: "_arm64_", intel: "_"

  version "3.3.5"
  sha256 arm:   "55390466cd4d192620fff8558e6b757532c744c53724a2d533e033d94749c976",
         intel: "4790eedc878f749a8babd0d1632e832a784f71824d41746e9d953adb2352d9c3"

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
