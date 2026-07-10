cask "openwork" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "0.17.20"
  sha256 arm:          "f49b639958b47945a3abcab49fb87a45c01510fe6a3ed505d152807fc36273e3",
         intel:        "790d4e8e1baa881e3b5a18f6e0bfd15c8550fbc973b47631f1e245772c73a1ef",
         arm64_linux:  "aa8822b657a8c26118b81968ecb0243284093bf90cff77bbd9e353a7ba13765f",
         x86_64_linux: "4251a9d415b5f696474405a7b8642a89da6561c332938a1a1f22f57bf0bbf13d"

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
