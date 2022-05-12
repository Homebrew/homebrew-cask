cask "flutter" do
  arch = Hardware::CPU.intel? ? "_" : "_arm64_"
  version "3.0.0"

  if Hardware::CPU.intel?
    sha256 "63ed2a514c7212baa784a9dd72d5fe6a0bdec690ee0f308721fe03729ab4c9b8"
  else
    sha256 "128f0fff720541332c52f289f8cb77e679a32e8a617ace54273def902d00e02d"
  end

  url "https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos#{arch}#{version}-stable.zip",
      verified: "storage.googleapis.com/flutter_infra_release/"
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
