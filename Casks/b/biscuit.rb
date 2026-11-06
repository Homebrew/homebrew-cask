cask "biscuit" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: ".AppImage"

  version "2.2.8"
  sha256 arm:          "575745c572918027e3b683337579f179523b77e2d869a2ba2c48ac385222e596",
         intel:        "2067cc4d216d9a79c84cd94727c2f50129166a72e5b6ec714a10f25602e8f197",
         x86_64_linux: "1f9a943dda1d8e31c6ca8ddca5a3508e03e0fa740a31239d9451a423a25d1221"

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
