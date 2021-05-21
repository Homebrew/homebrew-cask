cask "raindropio" do
  version "5.3.33"

  if Hardware::CPU.intel?
    sha256 "22aadd354e7baa4e40a47ff6be285425a2326ecd47ace4fbe5ddcd0e375b3384"

    url "https://github.com/raindropio/desktop/releases/download/v#{version}/Raindrop-x64.dmg",
        verified: "github.com/raindropio/desktop/"
  else
    sha256 "560bfc997d5ef881e779304fe255e5d66fbefb50d0c05c368f08f195b9d54c1c"

    url "https://github.com/raindropio/desktop/releases/download/v#{version}/Raindrop-arm64.dmg",
        verified: "github.com/raindropio/desktop/"
  end

  name "Raindrop.io"
  desc "All-in-one bookmark manager"
  homepage "https://raindrop.io/"

  auto_updates true

  app "Raindrop.io.app"

  zap trash: [
    "~/Library/Application Support/Raindrop.io",
    "~/Library/Caches/com.apple.Safari/Extensions/Raindrop.io.safariextension",
    "~/Library/Cookies/io.raindrop.mac.binarycookies",
    "~/Library/Preferences/io.raindrop.mac.helper.plist",
    "~/Library/Preferences/io.raindrop.mac.plist",
    "~/Library/Safari/Extensions/Raindrop.io.safariextz",
    "~/Library/Saved Application State/io.raindrop.mac.savedState",
  ]
end
