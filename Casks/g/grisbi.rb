cask "grisbi" do
  version "3.0.1"
  sha256 "ea5c1cda6e774e7607cd8a2da94bcd420369bc04136d94f8455fb4735c047aa5"

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
