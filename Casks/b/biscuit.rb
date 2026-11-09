cask "biscuit" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: ".AppImage"

  version "2.2.10"
  sha256 arm:          "1ccd88c95019e9b1638265cbb1796a632a8d858ad564960bdedb784de66e5196",
         intel:        "2d0fb34859e2aaa0e853db7d18d78a7dac0b5f4730ab484ab373faddcacc7fd6",
         x86_64_linux: "0426811f231b08a3f3f8f2da6faaf1f1dfdf0f6a645a912914304e25eaebfe6e"

  on_macos do
    depends_on macos: :ventura

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
