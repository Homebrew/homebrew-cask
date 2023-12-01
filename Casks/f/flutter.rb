cask "flutter" do
  arch arm: "_arm64"

  version "3.16.2"
  sha256 arm:   "5c58fac2bf236ced8ade193b5883a431a861663949e9d5d1a4bf1d93b1f2076f",
         intel: "99e3e8f80d03be212bb991b03c37dc598dffbf190784166ce9d27cb12ac7d06b"

  url "https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos#{arch}_#{version}-stable.zip",
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
