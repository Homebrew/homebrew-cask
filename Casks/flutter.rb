cask "flutter" do
  version "2.0.4"
  sha256 "31e4a9f874e9d9743e7c3bb6bc69b3ba1bad122e71a4424e4240f204d0c9b34e"

  url "https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_#{version}-stable.zip",
      verified: "storage.googleapis.com/flutter_infra/"
  name "Flutter SDK"
  desc "UI toolkit for building applications for mobile, web and desktop"
  homepage "https://flutter.dev/"

  livecheck do
    skip "No version information available"
  end

  auto_updates true

  binary "flutter/bin/dart"
  binary "flutter/bin/flutter"
end
