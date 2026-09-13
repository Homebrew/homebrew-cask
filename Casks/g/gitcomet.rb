cask "gitcomet" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.2.4"
  sha256 arm:          "fc11a6724390719532c8421fe2ee8c9fb81b290038ebdd92d83b688580c4631f",
         intel:        "d8b2e81003c78dabc9d8dc2bfbc4f8f572a0ccae3977c66eef4ccebf4525c027",
         arm64_linux:  "92494ecf6ea71c4ba8fcdaf61871989d4c05283c6fc06f39fac3ad8b3966be87",
         x86_64_linux: "a989eb4b33eea8e3a90b2710eabe9adef411f0b24f9aac26f0800c64222ea698"

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
