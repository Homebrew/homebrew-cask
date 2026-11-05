cask "openwork" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.18.65"
  sha256 arm:          "08c9f51da435af21b77cada5f14b58006386e929a83f9f30ebb4cbddae79e2b1",
         intel:        "2df3d8ee4cc02282182883503ffee9b7420d76a06f9d486ee2790926a22c21c4",
         arm64_linux:  "a3610b40e2130356641d3cf46cb84f6ec94c624fee1d70f5d1e7f337dd1e3e52",
         x86_64_linux: "c827ea8e15e7697e5005521f6a1e72083b5c6351595ecbf9173046fb479b1056"

  on_macos do
    auto_updates true
    depends_on macos: :monterey

    app "OpenWork.app"

    uninstall quit: "com.differentai.openwork"

    zap trash: [
      "~/Library/Application Support/@openwork",
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

    zap trash: [
      "~/.config/@openwork",
      "~/.config/com.differentai.openwork",
      "~/.config/openwork",
    ]
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
