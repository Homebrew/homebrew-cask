cask "biscuit" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: ".AppImage"

  version "2.1.3"
  sha256 arm:          "01a484550ab0f13e07ed527f013ec04cf448dde868f478e8958b9afd6a6fa3e6",
         intel:        "3fe8bb8b433c1ce485a5a62225eb008236976cb62b730f86da6475d899f3fda4",
         x86_64_linux: "2e999c5fca37e18281f887ccaf4e95c7e0525b8ea9173a4d2f0a559fd5de1769"

  on_macos do
    depends_on macos: :monterey

    app "Biscuit.app"

    zap trash: [
      "~/Library/Application Support/biscuit",
      "~/Library/Logs/Biscuit",
      "~/Library/Preferences/com.eatbiscuit.biscuit.plist",
      "~/Library/Saved Application State/com.eatbiscult.biscult.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Biscuit-#{version}.AppImage", target: "Biscuit.AppImage"
  end

  url "https://github.com/agata/dl.biscuit/releases/download/#{version}/Biscuit-#{version}#{url_end}"
  name "Biscuit"
  desc "Browser to organise apps"
  homepage "https://eatbiscuit.com/"

  auto_updates true
end
