cask "grisbi" do
  version "2.0.5"
  sha256 "75620ff25fd60b9fe8fe3422aed494e23d83a0a6f75d483f6f01f04d183ab21b"

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
end
