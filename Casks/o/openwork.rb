cask "openwork" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.18.11"
  sha256 arm:          "d9892dce1783d5af87742153475c6d16c2460eb3f989b9d65fb238a1e0459cca",
         intel:        "99dc891850d65da69b246146f82cf900cfb8351c93c98370810283f9cbe429f2",
         arm64_linux:  "4842120fb4d0f63ae9ab6963a808e4824532a10c8e3a8a4d49d8157eebb995ee",
         x86_64_linux: "c21d88e489787ff56bb8c036991b24681ee575c6d26a7d2ea689fa63e566d51c"

  on_macos do
    auto_updates true
    depends_on macos: :big_sur

    app "OpenWork.app"

    uninstall quit: "com.differentai.openwork"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.differentai.openwork.sfl*",
      "~/Library/Application Support/com.differentai.openwork",
      "~/Library/Application Support/OpenWork",
      "~/Library/Caches/OpenWork",
      "~/Library/Preferences/com.differentai.openwork.plist",
      "~/Library/Preferences/com.differentai.openwork.ShipIt.plist",
    ]
  end
  on_linux do
    app_image "openwork-linux-#{arch}-#{version}.AppImage", target: "OpenWork.AppImage"
  end

  url "https://github.com/different-ai/openwork/releases/download/v#{version}/openwork-#{os}-#{arch}-#{version}.#{url_end}"
  name "OpenWork"
  desc "Unofficial desktop GUI for OpenCode"
  homepage "https://openworklabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
