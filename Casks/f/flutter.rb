cask "flutter" do
  arch arm: "_arm64"

  version "3.35.1"
  sha256 arm:   "cbb08534b54a65b04d0e13acfc564ebbdfbdb451f90d1119881c9d32a3632b44",
         intel: "c391f533a4fe38c0efffdf7a6940c988801539d8a080029ebcd3b1e70e52cd1d"

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

  suite "flutter", target: "#{HOMEBREW_PREFIX}/share/flutter"
  binary "flutter/bin/dart"
  binary "flutter/bin/flutter"

  zap trash: "~/.flutter"
end
