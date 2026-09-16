cask "p2p-kiwi" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "universal.dmg", linux: "#{arch}.AppImage"

  version "2.0.2"
  sha256 arm:          "96005f8a4ff892ed6d6dc758087c4db086ecbcbce47604dbe94ce18cfc5e38f1",
         intel:        "96005f8a4ff892ed6d6dc758087c4db086ecbcbce47604dbe94ce18cfc5e38f1",
         arm64_linux:  "58cafe7ce0772d12c48e6902de965535f8a16ab2adccec52a3737100b9926ff8",
         x86_64_linux: "7fdbd272fa698f0a32c9497a271de40d072e59f60081f08eca62844501c7db5b"

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
