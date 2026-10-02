cask "p2p-kiwi" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "universal.dmg", linux: "#{arch}.AppImage"

  version "3.7.0"
  sha256 arm:          "749c395dd2691eb7c370169a01f92223e8a748ee0dd64b344d8814c000586c52",
         intel:        "749c395dd2691eb7c370169a01f92223e8a748ee0dd64b344d8814c000586c52",
         arm64_linux:  "8a51302fff90c9125e288b737faebba3e4c7bd3aebf4b493ac70f4dacc298e33",
         x86_64_linux: "a87807460fb5c38fb9fd31a02e3a6c6eb38c609f099242ef24538868e6ca8e88"

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
