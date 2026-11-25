cask "gitcomet" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.3.5"
  sha256 arm:          "f9a09aa43f6305f351bdab2f7bb5ed9a3a29c6781c40a42b72b0aaad11e38488",
         intel:        "dc37b3f78547bec88e4f5d7bbe131e9f41817e372083352f3f3f5e20c3035f62",
         arm64_linux:  "cdcf540b909665b9a14a8d44e880b5be37cdaec4f6340d301eb6098ee575f1b9",
         x86_64_linux: "eb94621d3179af452468a65885f983ffc60b5ef7524ba2641687ad9c03475644"

  on_macos do
    depends_on macos: :sequoia

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

    zap trash: [
      "~/.local/share/gitcomet",
      "~/.local/share/icons/hicolor/*/apps/gitcomet.png",
      "~/.local/state/gitcomet",
    ]
  end

  url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-#{os}-#{arch}.#{url_end}"
  name "GitComet"
  desc "Git GUI"
  homepage "https://gitcomet.dev/"
end
