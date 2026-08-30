cask "gitcomet" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.2.2"
  sha256 arm:          "a9283796a0606e25b9f6407d9c9840ea1af4b4307433443b00d9dfc14c0fb46e",
         intel:        "d18bed3afcadcc49bd3708fd61d8f8041129417828d31177e89e5b72eaa52263",
         arm64_linux:  "157de0d849ac3131b5b8485fa5b0a77cf727a42a5a5da71d8fbd2fae8ca6633e",
         x86_64_linux: "5b633b88fb451214a6676a5c96966d75982ec37cb14368486abdba76d575bbf3"

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
