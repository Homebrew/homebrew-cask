cask "openwork" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "0.17.19"
  sha256 arm:          "376d307d281412cacb64383dbfe69eae6a39af4bc43e53ea84ca5761580d9e01",
         intel:        "4f7d3ad661146e93c9f5e7e6cc866abedf46b853bb508bb68a3e0695940c0a54",
         arm64_linux:  "b41b070337ebf8d710a15ecf6e53faecc6825848226ba1e89788d75a7e10d057",
         x86_64_linux: "ffd2c52bc78c23923e1a084185f2bd8c9190a406102778e15c4252875b1c954b"

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
