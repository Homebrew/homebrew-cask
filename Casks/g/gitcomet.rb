cask "gitcomet" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.2.3"
  sha256 arm:          "03c09bdafb3708c089fc7090d90dd6ca2fbdec0ab3fd9138aaebe44a5fb9d4b1",
         intel:        "68e07e85678a686c0928d1b9abbc09f743dbb8860501ac6786faf7394c3a72e0",
         arm64_linux:  "8bede3c1a1f4ecedb4f2537504cd188362dba168bca3d06a3e49affa65d9f97d",
         x86_64_linux: "6502994a00e0a44c2a35ffaa69f10ad821d2c87c2cc147d3ad90f8fec70740e4"

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
