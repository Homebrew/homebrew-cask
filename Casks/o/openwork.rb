cask "openwork" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "0.17.13"
  sha256 arm:          "14e51d09d6c6bb4c0da8a1c3965a49e78fc2c0ac310f9e182b073865aa3cfb18",
         intel:        "c2d035dc69a64cbc81ba8630fd99e18a8661245e2011b72b4e8a4aa46a73696a",
         arm64_linux:  "42fc454e876de5509257af993a9ceba6a3c2a21d4d1930eb361506a588f01614",
         x86_64_linux: "b47df1d67f6ca808df98c8201605fa295e375f1cc7ebe679146d5d2690a226d0"

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
