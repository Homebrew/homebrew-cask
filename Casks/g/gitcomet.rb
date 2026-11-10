cask "gitcomet" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.3.4"
  sha256 arm:          "02d70829152703df4fb696418e2e31b1b7f62d064762e232e0f05db3e7c9334a",
         intel:        "fce37391a931804f9384cd25e88f2147c2984535bf354c77062d90fe4e6954df",
         arm64_linux:  "b65e2763f735e5a1cad3681b839542bf0b8e2d3363f20641b7c4137f9c6fe0c2",
         x86_64_linux: "305f4738867cc264fd3c36edbf904940210facd93aa8ad3407db07134dbb7fd2"

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
