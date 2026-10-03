cask "p2p-kiwi" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "universal.dmg", linux: "#{arch}.AppImage"

  version "3.9.1"
  sha256 arm:          "1a86323a6d2b1d72d43d3fe4181ccebce539ad4672eba83c2c262dd886727291",
         intel:        "1a86323a6d2b1d72d43d3fe4181ccebce539ad4672eba83c2c262dd886727291",
         arm64_linux:  "919602324560e3f3e0474efc59af7c7956e45cac37c8a7d3ce21b53fb20dfd64",
         x86_64_linux: "bf73131fbbdd76efa22c57408db12f1ca4630b7f062a1f77feb71cc4c08d25c4"

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
