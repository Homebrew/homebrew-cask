cask "p2p-kiwi" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "universal.dmg", linux: "#{arch}.AppImage"

  version "3.3.0"
  sha256 arm:          "43dfbf9488429971f7e57efd451b91c411200ddbc1d04eeac44b8404bd782b84",
         intel:        "43dfbf9488429971f7e57efd451b91c411200ddbc1d04eeac44b8404bd782b84",
         arm64_linux:  "5001291bc952e05298cab7c1e3592d57b6eea96666ec30f60e6c51f1596e4d68",
         x86_64_linux: "60d9d1b8fb4473dc538833fcaa0a698c85e54dd1c18b3410b37b83d7e3155456"

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
