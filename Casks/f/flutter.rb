cask "flutter" do
  arch arm: "_arm64"

  version "3.16.1"
  sha256 arm:   "12ca771b5e8af0fa8d91866642aa5c5df8437243483d153fe44a6567252d0644",
         intel: "6172752eba4ae1fd97e053fd6425c861a4b903c35bf1c406de1cbb8a78e16813"

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
