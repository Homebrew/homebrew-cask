cask "readest" do
  arch arm: "aarch64", intel: "amd64"

  version "0.11.16"

  url_end = on_system_conditional linux: "#{arch}.AppImage", macos: "universal.dmg"

  url "https://github.com/readest/readest/releases/download/v#{version}/Readest_#{version}_#{url_end}",
      verified: "github.com/readest/readest/"
  name "Readest"
  desc "Ebook reader"
  homepage "https://readest.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    sha256 "72360028a673bf92bf194b475274d8f3f0ee9b67aaabef92f6640f3ee0f4cb39"

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
    sha256 arm64_linux:  "831cdfac461a3d2bc1ee842bea5d98b53a3ffc2ef2b30ea1b927ba2cf505d449",
           x86_64_linux: "2174cfc186791947955b997082631c699f3d1bc62793128c4fb86865434db9f5"

    app_image "Readest_#{version}_#{arch}.AppImage", target: "Readest.AppImage"
  end
end
