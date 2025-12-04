cask "flutter" do
  arch arm: "_arm64"

  version "3.38.4"
  sha256 arm:   "25c6cc1496f7306b4a77ddc80403f960d025b7f3f66d9434f99ca212cb830c3f",
         intel: "f8fdc0e7ddfea553c73db87ff95f52de1cfcd408174358a46487b39c542b9d48"

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

  suite "flutter", target: "#{HOMEBREW_PREFIX}/share/flutter"
  binary "flutter/bin/dart"
  binary "flutter/bin/flutter"

  zap trash: "~/.flutter"
end
