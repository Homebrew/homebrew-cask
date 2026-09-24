cask "p2p-kiwi" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "universal.dmg", linux: "#{arch}.AppImage"

  version "3.5.2"
  sha256 arm:          "2fb185205c43e24c6d76559614c8525d2b3bc843fbedfda4dce829d57a7237cb",
         intel:        "2fb185205c43e24c6d76559614c8525d2b3bc843fbedfda4dce829d57a7237cb",
         arm64_linux:  "46e35bbb5e5356c4349585c48e15315b49194f90fec087a5df425960d09e6284",
         x86_64_linux: "56b7e83fc43233cc3f1c13979ca12910194d921460345b57d4ba857be8f39107"

  on_macos do
    depends_on macos: :ventura

    app "p2p.kiwi.app"

    zap trash: [
      "~/Library/Application Support/bananas",
      "~/Library/Preferences/net.getbananas.app.plist",
      "~/Library/Saved Application State/net.getbananas.app.savedState",
    ]
  end
  on_linux do
    app_image "p2p-kiwi_#{arch}.AppImage", target: "p2p.kiwi.AppImage"
  end

  url "https://github.com/dont-be-evil-company/p2p.kiwi/releases/download/v#{version}/p2p-kiwi_#{url_end}"
  name "p2p.kiwi"
  desc "Cross-platform screen sharing tool"
  homepage "https://p2p.kiwi/"
end
