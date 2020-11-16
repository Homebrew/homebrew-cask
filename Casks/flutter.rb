cask "flutter" do
  version "1.22.4"
  sha256 "d73b71316e883f36e02d412ed237c712c7942902bdb84ad0ebfa1fa431b75b88"

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
