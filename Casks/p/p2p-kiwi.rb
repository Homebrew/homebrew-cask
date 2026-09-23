cask "p2p-kiwi" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "universal.dmg", linux: "#{arch}.AppImage"

  version "3.4.0"
  sha256 arm:          "e153a52e87ac16a5ffa7b67c450e6f3fafab2b76328977168504e37e90acf3a0",
         intel:        "e153a52e87ac16a5ffa7b67c450e6f3fafab2b76328977168504e37e90acf3a0",
         arm64_linux:  "168cd437e790b44d7e89120be4b19d3d45e1db88d962c6e280b380703ae7b98a",
         x86_64_linux: "9cd29bcad1599f07fa75406080877caf7207b6be88ac66f080baa17ef744b170"

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
