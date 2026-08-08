cask "readest" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "universal.dmg", linux: "#{arch}.AppImage"

  version "0.12.1"

  on_macos do
    sha256 "178a7e40c2230034913e04a02787335db2d4c5920faee85826180d63f146ce37"

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
    sha256 arm64_linux:  "5dfdbdd35228ce70c15b32993bc74857c393075dc1a9d84aa470f8ce87d383e8",
           x86_64_linux: "2e1f05e000e1aa5d49d8cd0820281a01272964f8641483ec7ef7a813374172d8"

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
