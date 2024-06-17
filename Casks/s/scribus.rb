cask "scribus" do
  arch arm: "-arm64"

  version "1.6.2"
  sha256 arm:   "e0020434cbc234025b9a2675dd0ffda0f978ae2fc74e6b1d8528af7a8dc03075",
         intel: "0f0aa86dcd8674ee933e4cbe80f54f785f3847ea3b8c1d152d43f7245c0c7e69"

  url "https://downloads.sourceforge.net/scribus/scribus/#{version}/scribus-#{version}#{arch}.dmg",
      verified: "sourceforge.net/scribus/"
  name "Scribus"
  desc "Free and open-source page layout program"
  homepage "https://www.scribus.net/"

  livecheck do
    url "https://sourceforge.net/projects/scribus/rss?path=/scribus"
    regex(%r{url=.*?/scribus[._-]v?(\d+(?:\.\d+)+)(?:#{arch})?\.(?:dmg|pkg)}i)
  end

  app "Scribus.app"

  zap trash: [
    "~/Library/Application Support/Scribus",
    "~/Library/Preferences/Scribus",
    "~/Library/Saved Application State/net.scribus.savedState",
  ]
end
