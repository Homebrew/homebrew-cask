cask "flutter" do
  arch arm: "_arm64"

  version "3.47.4"
  sha256 arm:   "c6af6fa1d64946167b8637ba4c5a7bb3b8574729a1ebe931decd4924dbab7061",
         intel: "72ced0f81a5ea48f30d221699fa45378cdd1fa15426512444f32e4e1bee9db8b"

  url "https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos#{arch}_#{version}-stable.zip"
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
