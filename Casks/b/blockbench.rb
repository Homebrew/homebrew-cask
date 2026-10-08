cask "blockbench" do
  arch arm: "arm64", intel: "x64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"
  url_arch = on_system_conditional macos: "#{arch}_"

  version "5.2.2"
  sha256 arm:          "0d072bf863ee3e0bcaecbd0de67a5ffd29dfbf6ee2e8fe5eeb872a14331c5c03",
         intel:        "d743fa5d92db3e5081a450ca91ab0536c7a62ac12b9c1a7374040e2524a15469",
         x86_64_linux: "375fb8da33b8b9ad0f1f790836ed83020b6e987a56e23184d31d6ccf3132ac3b"

  on_macos do
    depends_on macos: :monterey

    app "Blockbench.app"

    zap trash: [
      "~/Library/Application Support/Blockbench",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/blockbench.sfl*",
      "~/Library/Preferences/blockbench.plist",
      "~/Library/Saved Application State/blockbench.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Blockbench_#{version}.AppImage", target: "Blockbench.AppImage"
  end

  url "https://github.com/JannisX11/blockbench/releases/download/v#{version}/Blockbench_#{url_arch}#{version}.#{url_end}"
  name "Blockbench"
  desc "3D model editor for boxy models and pixel art textures"
  homepage "https://www.blockbench.net/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
