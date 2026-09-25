cask "p2p-kiwi" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "universal.dmg", linux: "#{arch}.AppImage"

  version "3.6.1"
  sha256 arm:          "1e9a44a84430f31ba827f415d7ad2cceae9697ab01d15f09805d42bcad761701",
         intel:        "1e9a44a84430f31ba827f415d7ad2cceae9697ab01d15f09805d42bcad761701",
         arm64_linux:  "670a96c386a4d118b594dec1ece47a033b2997499a14110f6155b89ff9ac1d91",
         x86_64_linux: "7f2e09c24400806f9046c3f2d5a05b2c2114a2c78b21d34198c1ab6ce10d1a0f"

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
