cask "flutter" do
  arch arm: "_arm64_", intel: "_"

  version "3.3.0"
  sha256 arm:   "ad3b620aef65d43f54c5432a7f3a72304de639c7cf393a8a8796aa1094476b2e",
         intel: "f461df043b4a1b2dedcf31c11db5e5286b2b014804d2df445b85c6bb6ce0844b"

  url "https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos#{arch}#{version}-stable.zip",
      verified: "storage.googleapis.com/flutter_infra_release/releases/stable/macos/"
  name "Flutter SDK"
  desc "UI toolkit for building applications for mobile, web and desktop"
  homepage "https://flutter.dev/"

  livecheck do
    url "https://storage.googleapis.com/flutter_infra_release/releases/releases_macos.json"
    regex(%r{/flutter[._-]macos[._-]v?(\d+(?:\.\d+)+)[._-]stable\.zip}i)
  end

  auto_updates true

  binary "flutter/bin/dart"
  binary "flutter/bin/flutter"

  zap trash: "~/.flutter"
end
