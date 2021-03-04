cask "flutter" do
  version "2.0.0"
  sha256 "e096bf5cdf28401be2d7cf286e561bf70163012be892384b1fe1554b56682d52"

  url "https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_#{version}-stable.zip",
      verified: "storage.googleapis.com/flutter_infra/"
  name "Flutter SDK"
  desc "UI toolkit for building applications for mobile, web and desktop"
  homepage "https://flutter.dev/"

  auto_updates true

  binary "flutter/bin/dart"
  binary "flutter/bin/flutter"
end
