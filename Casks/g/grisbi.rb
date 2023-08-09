cask "grisbi" do
  version "2.0.5"
  sha256 "c927abc191c75b2ac0d622bcb4d9557628ca2cd8e463a000e1a6287a57702a75"

  url "https://downloads.sourceforge.net/grisbi/#{version.major_minor}.x/#{version}/Grisbi-#{version}.dmg",
      verified: "downloads.sourceforge.net/grisbi/"
  name "Grisbi"
  desc "Personal financial management program"
  homepage "https://www.grisbi.org/"

  livecheck do
    url "https://sourceforge.net/projects/grisbi/files/grisbi%20stable/"
    regex(%r{url=.*?/grisbi/files/grisbi%20stable/.*?[-_/](\d+(?:[-.]\d+)+)[-_/%.]}i)
  end

  app "Grisbi.app"

  zap trash: [
    "~/Library/Application Support/Grisbi",
    "~/Library/Preferences/org.grisbi.Grisbi.plist",
    "~/Library/Saved Application State/org.grisbi.Grisbi.savedState",
  ]
end
