cask "moonlight" do
  os macos: ".dmg", linux: "-x86_64.AppImage"

  version "6.2.0"
  sha256 arm:          "43617e5210d53968fcfb4a46526d1625a9056c6fe97e731673c31193dae776fc",
         intel:        "43617e5210d53968fcfb4a46526d1625a9056c6fe97e731673c31193dae776fc",
         x86_64_linux: "787b0dcbd42ae90620e76fb8d77d7c441ba6473a91c2d7fc3a0fc2466f992437"

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
