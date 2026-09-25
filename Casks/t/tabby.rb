cask "tabby" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x86_64", linux: "x64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "1.0.237"
  sha256 arm:          "af86b421f39a5f881e8dbac72744528b612ceb3bf9f9811f108969ecfeff4bc6",
         intel:        "4a4e327ef6fd0351cbed69e1aaf405752a18228e986812b6bc8e6dd642f8024d",
         arm64_linux:  "e501bdb57aea752089e0fceda43b25d3d569ab1ff4218926af5f863c5e60df9c",
         x86_64_linux: "de5dc12466ad49b7ac5fb493e7fbb8a4df0d2c23265996a8c55f490367ca6be4"

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

  url "https://github.com/Eugeny/tabby/releases/download/v#{version}/tabby-#{version}-#{os}-#{arch}.#{url_end}"
  name "Tabby"
  name "Terminus"
  desc "Terminal emulator, SSH and serial client"
  homepage "https://eugeny.github.io/tabby/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
