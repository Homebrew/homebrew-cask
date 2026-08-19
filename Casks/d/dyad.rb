cask "dyad" do
  arch arm: "arm64", intel: "x64"
  os macos: "-darwin-#{arch}-", linux: "_"
  url_end = on_system_conditional macos: ".zip", linux: "_x86_64.AppImage"

  version "1.11.1"

  on_macos do
    sha256 arm:   "0982909fcccce3ac62389933e7193dc84acd126f9406225fa21d826cf07af6c2",
           intel: "d73155068d1a5d87789d2b182d6fadb9e9b7da5cbf8daa4378ac5d836c369e43"

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
    sha256 "37399d24b38439745d90a08ede98c3cefe4115b9d29f7d400dc41263307114c1"

    depends_on arch: :x86_64

    app_image "dyad_#{version}_x86_64.AppImage", target: "Dyad.AppImage"
  end

  url "https://github.com/dyad-sh/dyad/releases/download/v#{version}/dyad#{os}#{version}#{url_end}",
      verified: "github.com/dyad-sh/dyad/"
  name "Dyad"
  desc "AI-powered app builder"
  homepage "https://dyad.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
