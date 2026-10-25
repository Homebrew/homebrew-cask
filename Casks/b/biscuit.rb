cask "biscuit" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: ".AppImage"

  version "2.2.1"
  sha256 arm:          "3d5bc5f8126a236f6fda719c9ece75f291f01998e64173eb9fb3e42e26c6e12e",
         intel:        "8deba9769136b150a4fa13683e26852f02b8ad725ddaa2b3cb507d25d6967354",
         x86_64_linux: "2b2fbe2cd3084eee9a8e0602b26b065f6873f6070fca14108d8916942cebea12"

  on_macos do
    depends_on macos: :monterey

    app "Biscuit.app"

    zap trash: [
      "~/Library/Application Support/biscuit",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.eatbiscult.biscult.sfl*",
      "~/Library/Logs/Biscuit",
      "~/Library/Preferences/com.eatbiscuit.biscuit.plist",
      "~/Library/Preferences/com.eatbiscult.biscult.plist",
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
