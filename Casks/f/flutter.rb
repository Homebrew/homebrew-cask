cask "flutter" do
  arch arm: "_arm64"

  version "3.27.1"
  sha256 arm:   "b59580cdb3fe18e60c88eac17bc9a59cfe3c7acbc9efd83f041f0776421737ee",
         intel: "3a2e792c4014be62df9d8dfd9cdf1b8e180a10cac11144310f3d2ee149810cf5"

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
