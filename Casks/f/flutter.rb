cask "flutter" do
  arch arm: "_arm64"

  version "3.16.6"
  sha256 arm:   "b89c5cbaa183e6f00b780ae44e56254fe677bfb9728092a84e2ebc5b517f479b",
         intel: "a2bef5d1f7b2c2f0f740792e1db8149bd5d8fa011afc0b4a200137e93ae0bef1"

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

  postflight do
    FileUtils.ln_sf("#{staged_path}/flutter", "#{HOMEBREW_PREFIX}/share/flutter")
  end

  uninstall_postflight do
    FileUtils.rm_f("#{HOMEBREW_PREFIX}/share/flutter")
  end

  zap trash: "~/.flutter"
end
