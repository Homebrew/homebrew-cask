cask "flutter" do
  arch arm: "_arm64"

  version "3.35.0"
  sha256 arm:   "69e5c816b8cdcc7320a259dcaf12f25aaaf5dbe976b719050fa3823ec65aed43",
         intel: "4af8a01519792c5bb645f9e000ba25037ec51182d82313acbec4532e5f1f8bf5"

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
