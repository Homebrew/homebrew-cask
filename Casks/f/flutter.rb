cask "flutter" do
  arch arm: "_arm64"

  version "3.27.0"
  sha256 arm:   "da548f105beaf36812aa485f21cb140294040909a76182a5256085d196abab15",
         intel: "3e7c1d25408d9ed81785555847459eee98b0b664faea60f773bd1078622988f8"

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

  binary "flutter/bin/dart"
  binary "flutter/bin/flutter"
  binary "flutter", target: "#{HOMEBREW_PREFIX}/share/flutter"

  zap trash: "~/.flutter"
end
