cask "scribus" do
  version "1.4.8"
  sha256 "9626c35ca5de5da59ac983efac3572318d327b3a921522c9f80a525b039a0af5"

  url "https://downloads.sourceforge.net/scribus/scribus/#{version}/scribus-#{version}.dmg",
      verified: "sourceforge.net/scribus/"
  name "Scribus"
  desc "Free and open-source page layout program"
  homepage "https://www.scribus.net/"

  livecheck do
    url "https://www.scribus.net/downloads/stable-branch/"
    regex(/Current\s*stable\s*release:\s*Scribus\s*(\d+(?:\.\d+)*)/i)
  end

  conflicts_with cask: "homebrew/cask-versions/scribus-dev"

  app "Scribus.app"

  zap trash: [
    "~/Library/Application Support/Scribus",
    "~/Library/Preferences/Scribus",
    "~/Library/Saved Application State/net.scribus.savedState",
  ]
end
