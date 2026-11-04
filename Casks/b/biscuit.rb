cask "biscuit" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: ".AppImage"

  version "2.2.4"
  sha256 arm:          "dc1c6b07f0b0545b75771e838b0b470cdf464a81d7f3e15b40a3f590be09ed4c",
         intel:        "125b2a1abf3ff4aa7c07a0beb661775057b9b4e627e28020c2ca4488ef24a7e5",
         x86_64_linux: "0d02d344835567aab6f5ae925e4d1c27bf787bdd73dd0bb31bc4cef71b374239"

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
