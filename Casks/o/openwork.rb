cask "openwork" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "0.17.23"
  sha256 arm:          "857929e41cec150ed26044aa509d7662aeef62d68e9c1fa0eea4834acf59583c",
         intel:        "11a518eadba36f4094eba2da47494539763e4e282052de622d369391f50b8882",
         arm64_linux:  "43010c7d1eb37ff439c0f45d734a4ec0901ea738c270485a68e82b24e1401b39",
         x86_64_linux: "07b47dbd3425f140c981b8baf72b8b52acf9c1395286900f04368456a2223ee8"

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
