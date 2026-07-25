cask "tabby" do
  os macos: "macos", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x86_64"
  end
  on_linux do
    arch arm: "arm64", intel: "x64"
  end

  version "1.0.235"
  sha256 arm:          "1080a05d44c8acfe9301ec56c5ffa3ab0e472086d1ace8fe8a5e2cbf9f71c7d5",
         intel:        "09878c64b4c213c653310ba81655b91dc0f8063e1dd64dc57c3844a0bb58456d",
         arm64_linux:  "746c9e301eea78af152f26c6df1d29b3eea55b30ef29ffd9fa86bcf2bd8d03be",
         x86_64_linux: "0ca5dc015fe5ee7840f2b206864cc37c52f7c36b7a734e8653a39ae8a576dcef"

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
