cask "gitcomet" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.2.5"
  sha256 arm:          "8e6b46b641c5206c233534c723ddc6e127673b64a86654ac0f635d072e8a3255",
         intel:        "7205148bf1a8ca3f93a4ee4c348714b727522a73ccf747fce4847642c310e98b",
         arm64_linux:  "44c51b9fced071bd1eb47e0fb33b6209a7892323568064c1e0d4a1a24ce7f3c5",
         x86_64_linux: "aab7e9b6f0c926c4172c9a4df9f8a22845906cfe03f56e210353b7926b223b39"

  on_macos do
    depends_on macos: :ventura

    app "GitComet.app"
    binary "#{appdir}/GitComet.app/Contents/MacOS/gitcomet", target: "gitcomet"

    uninstall quit: "ai.autoexplore.gitcomet"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.autoexplore.gitcomet.sfl*",
      "~/Library/Application Support/gitcomet",
      "~/Library/Logs/gitcomet",
      "~/Library/Preferences/ai.autoexplore.gitcomet.plist",
    ]
  end
  on_linux do
    app_image "gitcomet-v#{version}-linux-#{arch}.AppImage", target: "GitComet.AppImage"
  end

  url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-#{os}-#{arch}.#{url_end}"
  name "GitComet"
  desc "Git GUI"
  homepage "https://gitcomet.dev/"
end
