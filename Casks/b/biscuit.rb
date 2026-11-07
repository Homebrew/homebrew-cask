cask "biscuit" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: ".AppImage"

  version "2.2.9"
  sha256 arm:          "626938a3e6f6722849b5d3a4785d076c8775b82c6664380d7a817735a2c7bc0b",
         intel:        "53052460f1f7017fdba199c3e9ebc7cd4dde406de4fc148e75fb6532d991a878",
         x86_64_linux: "bf7c8ebcd288bbc8a1b39f9cc01149dcaf7d5a5f64f9886fe8453b04637d223c"

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
