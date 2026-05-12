cask "flutter" do
  arch arm: "_arm64"

  version "3.41.9"
  sha256 arm:   "d692b030a63466c44d6b2bc88583380371ecbe328f22cc4057835f59739821a1",
         intel: "eaee3b6aa6da114eb0be843ac53f4f138d3d8827779ff1e4546b345c75b9cba1"

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
  depends_on :macos

  suite "flutter", target: "#{HOMEBREW_PREFIX}/share/flutter"
  binary "flutter/bin/dart"
  binary "flutter/bin/flutter"

  zap trash: "~/.flutter"
end
