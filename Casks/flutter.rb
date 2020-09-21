cask "flutter" do
  version "1.20.4"
  sha256 "08fcbcc9c902bc6f245d660b6d68f1da420fbdd5878902b5687961a5fb43e9f7"

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
