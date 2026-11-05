cask "biscuit" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: ".AppImage"

  version "2.2.5"
  sha256 arm:          "b118d8d6bc75c05fe1f860bb6682a3111e6117463c5558573563fa335394d97c",
         intel:        "f9bef82b8bddb49873321bfea4da0a384309370430fa10d3a80f00fdd1c99b8e",
         x86_64_linux: "0a593e9651d1598bb6ddf3823a9abf12e31ebeb0e53023b253022d0e9dd43b2c"

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

    zap trash: [
      "~/.cache/biscuit-updater",
      "~/.config/biscuit",
    ]
  end

  url "https://github.com/agata/dl.biscuit/releases/download/#{version}/Biscuit-#{version}#{url_end}"
  name "Biscuit"
  desc "Browser to organise apps"
  homepage "https://eatbiscuit.com/"

  auto_updates true
end
