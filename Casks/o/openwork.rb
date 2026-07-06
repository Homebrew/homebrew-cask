cask "openwork" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "0.17.11"
  sha256 arm:          "73be8307227af8f44998ee740d56ebd0133067a851cdc4659d6311137fc09c0f",
         intel:        "23c6729c756c64b82316070a0ebecd7af443a1f4d5f3428b9dcadb48c59b4fbe",
         arm64_linux:  "1c36d03974d2c50cff8c3cb984064f0deea3c96fbc8eb21eb2b933e85bda3cfb",
         x86_64_linux: "2ee1c1af6ab8cf835f30623e4705b55a83168fd59fe85d6488a88ee44749c4ae"

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
