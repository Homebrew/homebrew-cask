cask "openwork" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "0.17.29"
  sha256 arm:          "e59495cb047c4b0ab4b4c689ff174b6b0e3daf99b736b435cab4ade0caca5042",
         intel:        "4ce4df764c108e0e30c2d200fd75839c78c0a837db61d23e8c5a2d1ed1bac656",
         arm64_linux:  "ea3ce11d0349a28795859e2f0f1ce7107e0e487cd8e1fe8cd056b0457cc0bceb",
         x86_64_linux: "784450b363d1d66a677b8ab94fbec179194c92d797e3c4861cc701a0d8b83708"

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
