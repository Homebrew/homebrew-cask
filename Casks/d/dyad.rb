cask "dyad" do
  arch arm: "arm64", intel: "x64"
  os macos: "-darwin-#{arch}-", linux: "_"
  url_end = on_system_conditional macos: ".zip", linux: "_x86_64.AppImage"

  version "1.14.0"
  sha256 arm:          "4aaf3480d88d98c994cfaa7883310f96243a1d827d6294d55f4bb1e0dba55843",
         intel:        "fd21da95c7a19095ba8f597b284e26a1d4dd7cc2d7e83136d9de78a65a0e5b9e",
         x86_64_linux: "9d856af669964b0cf4cf3f0910a2d59b4d2b38f7464984db380748269254f882"

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
