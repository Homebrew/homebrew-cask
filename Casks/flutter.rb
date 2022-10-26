cask "flutter" do
  arch arm: "_arm64_", intel: "_"

  version "3.3.6"
  sha256 arm:   "4bb7cd85c31d90a40de6adb1a2bfab6b8f2e753805bd103968b5fb1b7625fcd6",
         intel: "32845432ca48ca0fcf41857fdae54c681ff6b7e2ded4353046daf0e7649e168d"

  url "https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos#{arch}#{version}-stable.zip",
      verified: "storage.googleapis.com/flutter_infra_release/releases/stable/macos/"
  name "Flutter SDK"
  desc "UI toolkit for building applications for mobile, web and desktop"
  homepage "https://flutter.dev/"

  livecheck do
    url "https://storage.googleapis.com/flutter_infra_release/releases/releases_macos.json"
    regex(%r{/flutter[._-]macos[._-]v?(\d+(?:\.\d+)+)[._-]stable\.zip}i)
  end

  auto_updates true

  binary "flutter/bin/dart"
  binary "flutter/bin/flutter"

  zap trash: "~/.flutter"
end
