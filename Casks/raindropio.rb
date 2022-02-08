cask "raindropio" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.4.19"

  if Hardware::CPU.intel?
    sha256 "9ba75b0000ac6836bdc01fa3344e49984d15c9f9c488e0e25dba3731ee7b2b75"
  else
    sha256 "207bd9bb10b855da93d1ad5740eaded77eafe9447c18e638beb36b49a07e927b"
  end

  url "https://github.com/raindropio/desktop/releases/download/v#{version}/Raindrop-#{arch}.dmg",
      verified: "github.com/raindropio/desktop/"
  name "Raindrop.io"
  desc "All-in-one bookmark manager"
  homepage "https://raindrop.io/"

  livecheck do
    url "https://github.com/raindropio/desktop/releases"
    strategy :page_match
    regex(%r{v?(\d+(?:\.\d+)+)/Raindrop[._-]#{arch}\.dmg}i)
  end

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
