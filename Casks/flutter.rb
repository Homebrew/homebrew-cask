cask "flutter" do
  version "1.20.2"
  sha256 "c801653e989811b60f79d3edffa808bd1fba5b771ba8492bfc53ea49302afc0e"

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
