cask "readest" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "universal.dmg", linux: "#{arch}.AppImage"

  version "0.12.6"

  on_macos do
    sha256 "489f49c577917e2668dfd2da0a1bac8487af355475bd60d98d058cf5205c5ecb"

    auto_updates true
    depends_on macos: :monterey

    app "Readest.app"

    zap trash: [
      "~/Library/Application Support/com.bilingify.readest",
      "~/Library/Caches/com.bilingify.readest",
      "~/Library/Caches/readest",
      "~/Library/Preferences/com.bilingify.readest.plist",
      "~/Library/WebKit/com.bilingify.readest",
      "~/Library/WebKit/readest",
    ]
  end
  on_linux do
    sha256 arm64_linux:  "de8c3d86590277d178cc80b033823ea63229f2da5d374612bfed30edd7f778fb",
           x86_64_linux: "d89879377f3daa5bee4d7d9e435e4abc597917dfe1d799af82d746579e18d298"

    app_image "Readest_#{version}_#{arch}.AppImage", target: "Readest.AppImage"
  end

  url "https://github.com/readest/readest/releases/download/v#{version}/Readest_#{version}_#{os}"
  name "Readest"
  desc "Ebook reader"
  homepage "https://readest.com/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
