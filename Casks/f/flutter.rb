cask "flutter" do
  arch arm: "_arm64"

  version "3.24.0"
  sha256 arm:   "3c443985c9cda5f6959a274caddfeb38e11777fc8ed8a69ae700a1485e6dd258",
         intel: "94ab73b88a4a996c4eb930644838d0863918cbc4a039a8144ccafe2e1cacd304"

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
    FileUtils.rm("#{HOMEBREW_PREFIX}/share/flutter")
  end

  zap trash: "~/.flutter"
end
