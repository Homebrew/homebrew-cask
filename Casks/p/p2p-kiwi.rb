cask "p2p-kiwi" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "universal.dmg", linux: "#{arch}.AppImage"

  version "3.10.0"
  sha256 arm:          "6304e055668e825625a04cb6fe126ebffdd2906200af277339547e0882fffcf2",
         intel:        "6304e055668e825625a04cb6fe126ebffdd2906200af277339547e0882fffcf2",
         arm64_linux:  "7b3215109ca11ce289e4b4f152bbe23689ccd21c74ba4fa7eb266a0d0d101a05",
         x86_64_linux: "0cf749b11b016607719bb488a9ca04ef75d92f92d76067f8590a4f68b0e01b31"

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
