cask "grisbi" do
  version "2.0.5"
  sha256 "cb60640ab3966b006bea5d3fc70ac196aef69e3c5a290cfe74797493e6c2b64c"

  url "https://downloads.sourceforge.net/grisbi/grisbi%20stable/#{version.major_minor}.x/#{version}/Grisbi-#{version}.dmg",
      verified: "sourceforge.net/grisbi/"
  name "Grisbi"
  desc "Personal financial management program"
  homepage "https://www.grisbi.org/"

  livecheck do
    url "https://sourceforge.net/projects/grisbi/files/latest/download"
    strategy :header_match
  end

  app "Grisbi.app"
end
