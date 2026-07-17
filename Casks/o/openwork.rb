cask "openwork" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "0.17.32"
  sha256 arm:          "867b3273c61376f9510a67ef79a5d70464857c21761d57bf9adb43b9217bf8e6",
         intel:        "372063563a25ea151d0f140f731038b04674dd03d7bf308fbc80c3a6d8e6b4a8",
         arm64_linux:  "7417a23dc72ecdc7bd189e668ae29513700f2fb6557519271f2a7b909828daf2",
         x86_64_linux: "67e506f4d185ceecd2f6394e59226f02918ff2fcd9c727742c9e503ea989d6d5"

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
