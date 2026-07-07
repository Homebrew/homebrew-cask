cask "openwork" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "0.17.14"
  sha256 arm:          "50b300c81c0c6ce69dc46bcf4c35b0ee7ddf80a5f066492e26c3f708812b4f6b",
         intel:        "397a8eae6ba61099d6fe9e7271bc313c4b3c84b51e6be54118a039d94755d2a6",
         arm64_linux:  "5389e13d74db150aea56b38473f2f81644950df8fa22bf7bae9a0e76d5cc66d4",
         x86_64_linux: "e2945fc2b55273d2e12f8f570b52ded150674f5a843cf56663bb7c96212bf351"

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
