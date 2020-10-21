cask "flutter" do
  version "1.22.2"
  sha256 "1b749721d4e9c9d6712ae1701972a87c69743c25cf369b966dc2626af165db84"

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
