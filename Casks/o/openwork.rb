cask "openwork" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "0.17.33"
  sha256 arm:          "d4eff0c41219cddd73c0e63f5054ba892b9c95fd679a4d966284fe148eebd7c6",
         intel:        "5f5588a9b63f172a8fcc6b70150eb83738c773db0621764386f4cfb619715b3a",
         arm64_linux:  "631808e33f482a14c022c7ab6e2267be469b26a6bf1b733d25bb9484cc62a7e5",
         x86_64_linux: "c949c84427edaed1ae049df36e4db886244846e616117f6533ca7f917fe74879"

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
