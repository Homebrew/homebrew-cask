cask "raindropio" do
  version "5.3.36"

  if Hardware::CPU.intel?
    sha256 "741730eba1d69239243d15e49c8a8fa89d0b599e68e81e7f0e4ea5f31e54d881"

    url "https://github.com/raindropio/desktop/releases/download/v#{version}/Raindrop-x64.dmg",
        verified: "github.com/raindropio/desktop/"
  else
    sha256 "c9e78910f94a6c0ae9f3fb988c19143fdc1b82a2fa452f03e0617bab81f50c63"

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
