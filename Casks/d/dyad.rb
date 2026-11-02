cask "dyad" do
  arch arm: "arm64", intel: "x64"
  os macos: "-darwin-#{arch}-", linux: "_"
  url_end = on_system_conditional macos: ".zip", linux: "_x86_64.AppImage"

  version "1.22.0"
  sha256 arm:          "5307d4949407bbc81693d152e3c5795edea1409dc1daf202f02a20779b8b24d6",
         intel:        "0f931e0053b717cc3660b15afa3a973a4f31e7f474a94f45c9feae760034d2bc",
         x86_64_linux: "ac0a8f895515ce350b69f7469566dffd38d43c26595cabe0912788b78e1e67b5"

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

    zap trash: [
          "~/.config/dyad",
          "~/.local/share/applications/dyad-url-handler.desktop",
        ],
        rmdir: "~/dyad-apps"
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
