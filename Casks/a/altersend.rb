cask "altersend" do
  on_macos do
    arch arm: "-arm64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "1.5.1"
  sha256 arm:          "7bb4862e645ce158bc1aef056ef48a6ba1f53a47397cb8630d2ab135ad113d39",
         intel:        "4c6f93eed1dc69f5ba824fb0ce463b60461b85cf72d29a12e100696060c0c833",
         arm64_linux:  "8aac6aeb7c084c67feafc071b45c1094139b26463eb5e58f9ba1aab215372ab4",
         x86_64_linux: "03f2c3289b17d53b3cf151ece33fc50741718b117f5e6979c7e43702c4292e86"

  artifact = on_system_conditional macos: "AlterSend-#{version}#{arch}.dmg",
                                   linux: "AlterSend-#{arch}.AppImage"

  url "https://github.com/denislupookov/altersend/releases/download/v#{version}/#{artifact}",
      verified: "github.com/denislupookov/altersend/"
  name "AlterSend"
  desc "Secure, peer-to-peer file transfer app"
  homepage "https://altersend.com/"

  on_macos do
    depends_on macos: :monterey

    app "AlterSend.app"

    zap trash: [
      "~/Library/Application Support/AlterSend",
      "~/Library/Preferences/com.altersend.desktop.plist",
    ]
  end

  on_linux do
    app_image artifact, target: "AlterSend.AppImage"
  end
end
