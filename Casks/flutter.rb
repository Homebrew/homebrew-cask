cask "flutter" do
  version "1.22.6"
  sha256 "a5a7b66c1e4ac4058c72714d67bb863a80170749fe6f11f541e314474c899b05"

  url "https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_#{version}-stable.zip",
      verified: "storage.googleapis.com/flutter_infra/"
  name "Flutter SDK"
  desc "UI toolkit for building applications for mobile, web and desktop"
  homepage "https://flutter.dev/"

  auto_updates true

  binary "flutter/bin/dart"
  binary "flutter/bin/flutter"
end
