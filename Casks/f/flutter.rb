cask "flutter" do
  arch arm: "_arm64"

  version "3.19.5"
  sha256 arm:   "1d71ec1ecd9bcedf576aaa7a714c8afd2fd0934dbc8ea09f4b1dc3177d475ff4",
         intel: "d038a00ee5cd4a38c7bb7934e7b432499a3b2b25edc13ce5bb16f4914db0ef20"

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
