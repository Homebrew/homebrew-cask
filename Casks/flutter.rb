cask "flutter" do
  arch = Hardware::CPU.intel? ? "_" : "_arm64_"

  version "3.0.4"

  if Hardware::CPU.intel?
    sha256 "49176c7d27a20c41c06eb6247ecdaf19fc00b75a153f6705c2b80571fcb17019"
  else
    sha256 "bc4f4a8ba5284f5f057d27274ee2c029a025bed0682b8a87645e9865dea4a884"
  end

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
