cask "flutter" do
  version "1.22.5"
  sha256 "a64f5df488b95ac41036559bf436189037a868b393b1c050649cbb61d7d3b932"

  url "https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_#{version}-stable.zip",
      verified: "storage.googleapis.com/flutter_infra/"
  name "Flutter SDK"
  desc "UI toolkit for building applications for mobile, web and desktop"
  homepage "https://flutter.dev/"

  auto_updates true

  binary "flutter/bin/dart"
  binary "flutter/bin/flutter"
end
