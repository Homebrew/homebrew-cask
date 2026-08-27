cask "flutter" do
  arch arm: "_arm64"

  version "3.47.2"
  sha256 arm:   "f456fd6733053d9301828a2e702d6cbec872923126809aa8c48eb0a696d6cc01",
         intel: "b6fd6ba98c8503d5ee06a6670627b5b1c36167ece3427435ec83b66e9b28c6b5"

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
