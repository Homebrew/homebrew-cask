cask "openwork" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "0.17.12"
  sha256 arm:          "b86101d68fa751d8e802f11c6a754eddfe6ca646694869019a71f892e2f2c66c",
         intel:        "3bdacf2b37b420db377e5a8e6df0e4f46e1e62075f0407dbdd83fe2badf0e2a6",
         arm64_linux:  "3d8c2c5eb04a68d1c121a515ac26d53f2a1bf26b904e237a5ffe8e81ff3bacca",
         x86_64_linux: "5f427e3ed4160b5a75d0664910cebc6fcecd1f25d8e59f6023fde44b1e8c4961"

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
