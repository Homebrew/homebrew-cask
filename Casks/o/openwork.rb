cask "openwork" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "0.17.30"
  sha256 arm:          "ff662e20dfd2febf3eb1d8700b470f9e95a10cb48a9988f56056c8772a66bf67",
         intel:        "02ce2f957e680f878f96fa4505f0ca636b7dc8f3e082f8ad2f24e06a61211461",
         arm64_linux:  "e9cc0cd2a72f073c5e3f8cd0155f1c62839a214af55b58643ae7ff689cfb63a6",
         x86_64_linux: "2720e63d75d3c7e5f08d8ddde357066cbc40dbe5318fc0583dae9e51e92f5a05"

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
