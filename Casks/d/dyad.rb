cask "dyad" do
  arch arm: "arm64", intel: "x64"
  os macos: "-darwin-#{arch}-", linux: "_"
  url_end = on_system_conditional macos: ".zip", linux: "_x86_64.AppImage"

  version "1.18.0"
  sha256 arm:          "920c8ca8f7150dc7c1db61099068d519a0ba3b3f672856c6c1d08d70fd2bc5e9",
         intel:        "04d166b68c25775793f5e4c141ad711bf5c76bb580303a41aae548a4ab2086d3",
         x86_64_linux: "0abdb67393195c345b937ed9e15b20ad8601b9c2f37c50a8ccd42d7e7c2d3058"

  on_macos do
    depends_on macos: :monterey

    app "dyad.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.dyad.sfl*",
      "~/Library/Application Support/dyad",
      "~/Library/Caches/com.electron.dyad",
      "~/Library/Caches/com.electron.dyad.ShipIt",
      "~/Library/HTTPStorages/com.electron.dyad",
      "~/Library/Logs/dyad",
      "~/Library/Preferences/com.electron.dyad.plist",
    ], rmdir: "~/dyad-apps"
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "dyad_#{version}_x86_64.AppImage", target: "Dyad.AppImage"
  end

  url "https://github.com/dyad-sh/dyad/releases/download/v#{version}/dyad#{os}#{version}#{url_end}"
  name "Dyad"
  desc "AI-powered app builder"
  homepage "https://dyad.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
