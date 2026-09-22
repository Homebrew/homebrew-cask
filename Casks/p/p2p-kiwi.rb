cask "p2p-kiwi" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "universal.dmg", linux: "#{arch}.AppImage"

  version "3.2.0"
  sha256 arm:          "75afb50632f82dda2d65549ed5b059e58ecedb0ace26dfc11e9e284493f8667e",
         intel:        "75afb50632f82dda2d65549ed5b059e58ecedb0ace26dfc11e9e284493f8667e",
         arm64_linux:  "8a189d9fef63833246f8c802ae2004c6fc828a0f7b0f331639f579de36942ffc",
         x86_64_linux: "20050f4b9d8777537b593b8dd0133d352b48d04abf2d798d74b1e09d8d2703ba"

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
