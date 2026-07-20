cask "openwork" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "0.17.36"
  sha256 arm:          "e026349bb536f20b6fd4b4ed172a2a0ec93a59192aaeb242c6c8e5406efe21ed",
         intel:        "1e7f1a8afcd38a4567b37b0c93821467b22759074289c9bccf0ce69aab236944",
         arm64_linux:  "368b2ea20b45bd32b26ebfb3b49196de1d0167007431db2852c689a24a2c1472",
         x86_64_linux: "06bdd9bb14aaf5a6b962a379b612cd637d29996a90b8f293331b7a4a9d85cd05"

  url_end = on_system_conditional linux: ".AppImage", macos: ".dmg"

  url "https://github.com/different-ai/openwork/releases/download/v#{version}/openwork-#{os}-#{arch}-#{version}#{url_end}",
      verified: "github.com/different-ai/openwork/"
  name "OpenWork"
  desc "Unofficial desktop GUI for OpenCode"
  homepage "https://openworklabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    auto_updates true
    depends_on macos: :big_sur

    app "OpenWork.app"

    zap trash: [
      "~/Library/Application Support/OpenWork",
      "~/Library/Caches/OpenWork",
      "~/Library/Preferences/com.differentai.openwork.plist",
    ]
  end

  on_linux do
    app_image "openwork-linux-#{arch}-#{version}.AppImage", target: "OpenWork.AppImage"
  end
end
