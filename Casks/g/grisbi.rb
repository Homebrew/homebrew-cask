cask "grisbi" do
  version "3.0.3"
  sha256 "b207088a92749515845f886c265c10fbc3247478fb94132f398898285c856979"

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
