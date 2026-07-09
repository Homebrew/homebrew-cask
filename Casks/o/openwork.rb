cask "openwork" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "0.17.18"
  sha256 arm:          "7a341c60f83191d77aa5fdf875fd94e9bd3ef3cc5c3f096c1b822f53740b1721",
         intel:        "866e13e8b99b67efde89e1709b2129f578c117b90d5e90dcedd14acaf440aaf9",
         arm64_linux:  "02477780939e10052b327d4916dc247f9f1700a2a4a1701617b11f8650d53b3e",
         x86_64_linux: "ca29e3e8982bacde0b8d779059aed09605c3cf6d5dcea5b375fedd536e6928e5"

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
