cask "flutter" do
  arch arm: "_arm64_", intel: "_"

  version "3.3.8"
  sha256 arm:   "c49d66a68bd8e2dea1737cf58f72828e113f242ce4f28f268917baf30ea60ea9",
         intel: "2d97b90933da42d332f343dab97a982ce5317e904ff0fce3ca1ebe12c7d19501"

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
