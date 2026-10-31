cask "gitcomet" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.3.3"
  sha256 arm:          "ffde019181122d599ff84cc4cd51f24d066e3123ccc3386ae2dcd4f8e259e5ba",
         intel:        "ef2f0affd87de80ad2348bb442d5066a857e19edaf0126471e6c81f60c5a0701",
         arm64_linux:  "a735af6409729e339c3c7b76b69c8ce6d84aa15c7fc1d1b847ab5601fd4cd8aa",
         x86_64_linux: "b3a4203b0947ff73214773035271006bb3b4f62788cb1a0e3ca7a72560bab692"

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
