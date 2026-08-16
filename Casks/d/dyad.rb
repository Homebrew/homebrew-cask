cask "dyad" do
  arch arm: "arm64", intel: "x64"
  os macos: "-darwin-#{arch}-", linux: "_"
  url_end = on_system_conditional macos: ".zip", linux: "_x86_64.AppImage"

  version "1.10.0"

  on_macos do
    sha256 arm:   "f2e957c1c4bc63b8c4d5f2c47080d5e6384c326c6836a4c833e4adc58f2bba31",
           intel: "97d9e200943c9c5ebab2d07ff0ac18d77a4c1604a535fb676a27dc55f1cf9407"

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
    sha256 "2186aa39e2e1036ff47e69f2f0dbdd1f582d04289816be32eb9337800c1ff61a"

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
