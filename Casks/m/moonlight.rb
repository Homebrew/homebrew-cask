cask "moonlight" do
  os macos: ".dmg", linux: "-x86_64.AppImage"

  version "6.1.0"
  sha256 arm:          "d494740eead8ad4e620cdc8feedb56083bc29cabbbeef34cb82585fd87725fa2",
         intel:        "d494740eead8ad4e620cdc8feedb56083bc29cabbbeef34cb82585fd87725fa2",
         x86_64_linux: "0e855ffd22d407e18ab5fdb575fed5f01ca119a3f91993c5f0213f15ac80b400"

  on_macos do
    app "Moonlight.app"
    binary "#{appdir}/Moonlight.app/Contents/MacOS/Moonlight", target: "moonlight"

    zap trash: [
      "~/Library/Caches/Moonlight Game Streaming Project",
      "~/Library/Preferences/com.moonlight-stream.Moonlight.plist",
      "~/Library/Saved Application State/com.moonlight-stream.Moonlight.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Moonlight-#{version}-x86_64.AppImage", target: "Moonlight.AppImage"

    zap trash: [
      "~/.cache/Moonlight Game Streaming Project",
      "~/.config/Moonlight Game Streaming Project",
    ]
  end

  url "https://github.com/moonlight-stream/moonlight-qt/releases/download/v#{version}/Moonlight-#{version}#{os}"
  name "Moonlight"
  desc "GameStream client"
  homepage "https://moonlight-stream.org/"
end
