cask "flutter" do
  version "2.0.1"
  sha256 "0d1985d0cc6ef99a51c8b2051aceb07eb654a02973e8e43aaf28ef1d8c3735b4"

  url "https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_#{version}-stable.zip",
      verified: "storage.googleapis.com/flutter_infra/"
  name "Flutter SDK"
  desc "UI toolkit for building applications for mobile, web and desktop"
  homepage "https://flutter.dev/"

  auto_updates true

  binary "flutter/bin/dart"
  binary "flutter/bin/flutter"
end
