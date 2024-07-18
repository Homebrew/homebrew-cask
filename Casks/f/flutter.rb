cask "flutter" do
  arch arm: "_arm64"

  version "3.22.3"
  sha256 arm:   "130f14d063e7cbe3fb7e982f6726a9a4cfa19164850119fa6bdd2875589ba70e",
         intel: "b30b28ad6dd5ae1a6aefa23ff72d2418ef5e378a79bc55f7d8d5ba241416acbf"

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
