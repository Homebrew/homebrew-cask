cask "gitcomet" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.1.16"
  sha256 arm:          "2cd4049ea4a8efc0e6f2ff97c9fbb480496b08f8db44de4be75fde1a26b0e822",
         x86_64:       "3d0b67aabcf61e866215b5214f5ae98d0bf6cb2a65101034083705cd26d63bba",
         arm64_linux:  "33b5a5221d73d1e98c853d2880173bfd8cf74d88f7384bfc003e00fed1323884",
         x86_64_linux: "b5762a88390c3e8a5498529416252c01babedf8461aed3c65a8cea4aab9ea4ac"

  url_end = on_system_conditional linux: ".AppImage", macos: ".dmg"

  url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-#{os}-#{arch}#{url_end}",
      verified: "github.com/Auto-Explore/GitComet/"
  name "GitComet"
  desc "Git GUI"
  homepage "https://gitcomet.dev/"

  on_macos do
    depends_on macos: :ventura

    app "GitComet.app"
    binary "#{appdir}/GitComet.app/Contents/MacOS/gitcomet", target: "gitcomet"

    uninstall quit: "ai.autoexplore.gitcomet"

    zap trash: [
      "~/Library/Application Support/gitcomet",
      "~/Library/Logs/gitcomet",
      "~/Library/Preferences/ai.autoexplore.gitcomet.plist",
    ]
  end

  on_linux do
    app_image "gitcomet-v#{version}-linux-#{arch}.AppImage", target: "GitComet.AppImage"
  end
end
