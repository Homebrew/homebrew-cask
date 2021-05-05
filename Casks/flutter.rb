cask "flutter" do
  version "2.0.6"
  sha256 "98cdbab108586c359984c5a5e42f48d9244a3ecb56989111e16f999eae2ae95b"

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
