cask "flutter" do
  arch arm: "_arm64"

  version "3.13.5"
  sha256 arm:   "a278d928faae955f6117d2ef4496d763008e453f55dcbfcec2bc00a44792d9fc",
         intel: "31da5a8328792bd55b52f21f96a1c64855b9afb1597717c5ccb1803b50d58333"

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
