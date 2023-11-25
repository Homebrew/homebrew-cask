cask "grisbi" do
  version "3.0.0"
  sha256 "65ab8f2a2c57f7814d5c31c542261129deba7b1ca9a3a71136b79badcb25ec4e"

  url "https://downloads.sourceforge.net/grisbi/Grisbi-#{version}.dmg",
      verified: "downloads.sourceforge.net/grisbi/"
  name "Grisbi"
  desc "Personal financial management program"
  homepage "https://www.grisbi.org/"

  livecheck do
    url "https://sourceforge.net/projects/grisbi/files/grisbi%20stable/"
    regex(%r{url=.*?/grisbi/files/grisbi%20stable/.*?[-_/](\d+(?:[-.]\d+)+)\.dmg[-_/%.]}i)
  end

  app "Grisbi.app"

  zap trash: [
    "~/Library/Application Support/Grisbi",
    "~/Library/Preferences/org.grisbi.Grisbi.plist",
    "~/Library/Saved Application State/org.grisbi.Grisbi.savedState",
  ]
end
