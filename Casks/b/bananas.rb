cask "bananas" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "universal.dmg", linux: "#{arch}.AppImage"

  version "0.0.22"

  on_macos do
    sha256 "ba1a59997dfa31b1216a1648ee3039eb2733d56895d025ce50ffb74a4696a0b6"

    app "bananas.app"

    zap trash: [
      "~/Library/Application Support/bananas",
      "~/Library/Preferences/net.getbananas.app.plist",
      "~/Library/Saved Application State/net.getbananas.app.savedState",
    ]
  end
  on_linux do
    sha256 arm64_linux:  "0f09d9e6f35d1237832a7330c67cb9ded0aab99280b7b035ca4e776b40e3f731",
           x86_64_linux: "7236bd1210a9357d6d556d86085f7d79ef8fc2e476f2f677ccfab75c6210acc0"

    app_image "bananas_#{arch}.AppImage", target: "Bananas.AppImage"
  end

  url "https://github.com/mistweaverco/bananas/releases/download/v#{version}/bananas_#{url_end}",
      verified: "github.com/mistweaverco/bananas/"
  name "Bananas Screen Sharing"
  desc "Cross-platform screen sharing tool"
  homepage "https://getbananas.net/"
end
