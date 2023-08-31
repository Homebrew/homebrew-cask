cask "flutter" do
  arch arm: "_arm64"

  version "3.13.2"
  sha256 arm:   "cbe731697658ccebc4cbbd7d32da5f18d9e51afe193cf0279d0cf6720b1ab09f",
         intel: "64a8cf741b492adddbf06763c84ec2e72a70ae908806916b50e3fc9f8ee8e3d7"

  url "https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos#{arch}_#{version}-stable.zip",
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
