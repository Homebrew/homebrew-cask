cask "flutter" do
  version "2.0.6"
  sha256 "d17ebaa5d1df01c8330a7558dbdf5ba1bfcdd12b4f63fc1d56e0f6082c57ed89"

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
