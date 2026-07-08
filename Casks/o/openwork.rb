cask "openwork" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "0.17.15"
  sha256 arm:          "65a949142047ae1b51ce264aa7b3076366e9f58744040694596ddcc590a70944",
         intel:        "fd41c47f5d5434be433c735dcdbd91aa4aac7fec5586f3af1312fb064b0c05bd",
         arm64_linux:  "a0d2aa93e8486571fe5557901fda98bdd278f88bd3a49e34a60925f6a3bd31a0",
         x86_64_linux: "27f155352c124f777ae70e9cac237cfc3d20afa453602e014010ace4d5557838"

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
