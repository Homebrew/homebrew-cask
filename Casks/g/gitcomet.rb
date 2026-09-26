cask "gitcomet" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.2.6"
  sha256 arm:          "6321da7ea5f04d9f366afc6be7937608b79a54f6467e5a1e85abd8458759e4c9",
         intel:        "b7d87c334c4aa149c93e2189c76fe577b42c5ae40597c0767fc8494b92620875",
         arm64_linux:  "141aeb1ea3e71c8a5df97bae69282e23d0963329daf8d2a260bbfa207322afa4",
         x86_64_linux: "5cf69c5d27e354b3d299a885e0c2bbd9f159246fa683b146e33129693af518c5"

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
