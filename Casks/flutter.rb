cask "flutter" do
  version "2.0.3"
  sha256 "f9f7ef2118945252961a738b0d245e41aac289b793ee872735ae546637758551"

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
