cask "flutter" do
  version "1.22.1"
  sha256 "04f5b8a1af40814ff496d48c7a71fa8ff10ef396fca6a9feb2d231a3f7776b9a"

  # storage.googleapis.com/flutter_infra/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_#{version}-stable.zip"
  name "Flutter SDK"
  desc "UI toolkit for building applications for mobile, web and desktop"
  homepage "https://flutter.dev/"

  auto_updates true
  depends_on macos: ">= :catalina"

  binary "flutter/bin/dart"
  binary "flutter/bin/flutter"
end
