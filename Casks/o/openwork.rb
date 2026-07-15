cask "openwork" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "0.17.27"
  sha256 arm:          "d02b92a6ece86fa210cf252ae61b58354249da97db55d9f69fed622eb8de4dc8",
         intel:        "1acd2bafe257786b839ade833250f7d51449c5f6edceed122a9f3529bd6392f8",
         arm64_linux:  "6e345ad854c2e9df989bf89edaa367e12974b771fefb3d01ad6e84fcd04572ae",
         x86_64_linux: "1d3dd6eea537e3349f726f4c4be4f6cfc07d4cf1ed3dbb94a4e8fa47a9e3118a"

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
