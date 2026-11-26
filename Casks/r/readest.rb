cask "readest" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "universal.dmg", linux: "#{arch}.AppImage"

  version "0.12.26"
  sha256 arm:          "18057053f5f4c243ad4dc1417536a4dce840e1ac71119f7f36f468b564c36437",
         intel:        "18057053f5f4c243ad4dc1417536a4dce840e1ac71119f7f36f468b564c36437",
         arm64_linux:  "b8def68869bbc8c6511e2b3f61338e6ca6951d74e2c8313230b95d1f8b750c35",
         x86_64_linux: "52e36a5c8c38ed4d37e593a78da6825f3231a55db1fcdbd2564c1107ac86a25a"

  on_macos do
    auto_updates true
    depends_on macos: :monterey

    app "Readest.app"

    zap trash: [
      "~/Library/Application Support/com.bilingify.readest",
      "~/Library/Caches/com.bilingify.readest",
      "~/Library/Caches/readest",
      "~/Library/Logs/com.bilingify.readest",
      "~/Library/Preferences/com.bilingify.readest.plist",
      "~/Library/WebKit/com.bilingify.readest",
      "~/Library/WebKit/readest",
    ]
  end
  on_linux do
    app_image "Readest_#{version}_#{arch}.AppImage", target: "Readest.AppImage"

    zap trash: [
      "~/.cache/AppImage-Cache/com.bilingify.readest",
      "~/.cache/com.bilingify.readest",
      "~/.local/share/com.bilingify.readest",
    ]
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
