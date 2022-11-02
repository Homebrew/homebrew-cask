cask "flutter" do
  arch arm: "_arm64_", intel: "_"

  version "3.3.7"
  sha256 arm:   "95172586e28c8241a6c7a593573ec89fe0c48d70882421394923d477fac9f0a7",
         intel: "1bc4a9c4a8a89005157ff1ae17d2691c511b49cc1f0cf8b465bc1d0284d04d55"

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
