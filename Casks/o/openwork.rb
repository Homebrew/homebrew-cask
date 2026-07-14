cask "openwork" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "0.17.25"
  sha256 arm:          "a7a13ae6fc0d68d821f51899cc8d93895aea1a17aa2e408dc49b0df437627b44",
         intel:        "e532a694ac7aac7379ab356678d959905fff986ee3f5ba81e3fcd12e422a8cd8",
         arm64_linux:  "4ddee34749d813ccfabea1cec8edb1effeac40c5ba936abc50a4d114c30295a0",
         x86_64_linux: "3d853439f1ec194a9c9f418417ceafca4da44c89dcca7389a6a5c5e916ce0b0c"

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
