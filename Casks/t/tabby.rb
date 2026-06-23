cask "tabby" do
  os macos: "macos", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x86_64"
  end
  on_linux do
    arch arm: "arm64", intel: "x64"
  end

  version "1.0.234"
  sha256 arm:          "e5073aed89680a591dbb0fb34a2d7de031c792d160c5475357547234ebe29af7",
         intel:        "3e6b6050b22060029823c5bdcbcda79015c0ea9a29f6b9b5e767da56131440b2",
         arm64_linux:  "1c880e64edda3a3f5b2ea30e080b56a9d8db95867012b4cb4dfb6e867a7c7c25",
         x86_64_linux: "8cc12dbf7af301b95aa738da024856aef49280e982845f42491993ef0d49a97d"

  url_end = on_system_conditional linux: ".AppImage", macos: ".zip"

  url "https://github.com/Eugeny/tabby/releases/download/v#{version}/tabby-#{version}-#{os}-#{arch}#{url_end}",
      verified: "github.com/Eugeny/tabby/"
  name "Tabby"
  name "Terminus"
  desc "Terminal emulator, SSH and serial client"
  homepage "https://eugeny.github.io/tabby/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    depends_on macos: :monterey

    app "Tabby.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.tabby.sfl*",
      "~/Library/Application Support/tabby",
      "~/Library/Caches/org.tabby",
      "~/Library/Caches/org.tabby.ShipIt",
      "~/Library/HTTPStorages/org.tabby",
      "~/Library/Preferences/ByHost/org.tabby.ShipIt.*.plist",
      "~/Library/Preferences/org.tabby.helper.plist",
      "~/Library/Preferences/org.tabby.plist",
      "~/Library/Saved Application State/org.tabby.savedState",
      "~/Library/Services/Open Tabby here.workflow",
      "~/Library/Services/Paste path into Tabby.workflow",
    ]
  end

  on_linux do
    app_image "tabby-#{version}-linux-#{arch}.AppImage", target: "Tabby.AppImage"
  end
end
