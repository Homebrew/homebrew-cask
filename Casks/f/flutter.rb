cask "flutter" do
  arch arm: "_arm64"

  version "3.32.5"
  sha256 arm:   "6dedc5bf6ac9ffbbcca2918000e6e7b39df42c3c62e2f2c4f47edf64fce82598",
         intel: "83f65440464553fd2a0a6b70c54e2155a43643dd369f11b30b99b6375897525a"

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
