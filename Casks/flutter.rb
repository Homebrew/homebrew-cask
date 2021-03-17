cask "flutter" do
  version "2.0.2"
  sha256 "0fd76e44c2080e3e9c02e2960628ca3ee0999d4ad13dd4e6b76d0f3fee76379e"

  url "https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_#{version}-stable.zip",
      verified: "storage.googleapis.com/flutter_infra/"
  name "Flutter SDK"
  desc "UI toolkit for building applications for mobile, web and desktop"
  homepage "https://flutter.dev/"

  auto_updates true

  binary "flutter/bin/dart"
  binary "flutter/bin/flutter"
end
