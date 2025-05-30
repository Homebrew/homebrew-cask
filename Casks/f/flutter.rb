cask "flutter" do
  arch arm: "_arm64"

  version "3.32.1"
  sha256 arm:   "71e0c42f66c33f23321939c81f8f3367d11feb1cb1529e762032e66ccaa1949a",
         intel: "c6fca6809430a15f3bc9b385e7334a4616481b5f43e71e069eaeee0c3a6940de"

  url "https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos#{arch}_#{version}-stable.zip",
      verified: "storage.googleapis.com/flutter_infra_release/releases/stable/macos/"
  name "Flutter SDK"
  desc "UI toolkit for building applications for mobile, web and desktop"
  homepage "https://flutter.dev/"

  livecheck do
    url "https://storage.googleapis.com/flutter_infra_release/releases/releases_macos.json"
    strategy :json do |json|
      json["releases"]&.map do |release|
        next if release["channel"] != "stable"

        release["version"]
      end
    end
  end

  auto_updates true
  conflicts_with formula: "dart-sdk"

  binary "flutter/bin/dart"
  binary "flutter/bin/flutter"
  binary "flutter", target: "#{HOMEBREW_PREFIX}/share/flutter"

  zap trash: "~/.flutter"
end
