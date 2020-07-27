cask "grisbi" do
  version "1.2.2,86a2992c1"
  sha256 "89df854060d0445713e7bd02f99f952bd0fa7286a7102d32b2c40609f433d1cd"

  # sourceforge.net/grisbi/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/grisbi/grisbi%20stable/#{version.major_minor}.x/#{version.before_comma}/Grisbi-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast "https://sourceforge.net/projects/grisbi/rss?path=/grisbi%20stable"
  name "Grisbi"
  homepage "https://www.grisbi.org/"

  app "Grisbi.app"
end
