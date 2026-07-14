cask "openwork" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "0.17.24"
  sha256 arm:          "dfb8bd10521311e5c5a293f289361d765a54b2eab4f0512ac0512c33f14c3e68",
         intel:        "1ab3a0db3d9faa468565cde58437dd6d984c1a5466159805e4518ae259a8bc4f",
         arm64_linux:  "9f2fb8384d8026c66f781d74d971bab51b3e34210ab5a6d19e15789496736b82",
         x86_64_linux: "df13a5417f58f5c736d5c874964a6b05cb5531e4f9f34ddc1565ffbafbc62877"

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
