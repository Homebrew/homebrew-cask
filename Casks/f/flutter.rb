cask "flutter" do
  arch arm: "_arm64"

  version "3.47.5"
  sha256 arm:   "d4dd908b5f8f65515831b6d68ae33307a813f2b68947dded7a1994ee5ea7cead",
         intel: "a7893bb0feecd8bd066f4f7e850356f896a6fc3b862e6c506d21c76691a66b72"

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
