cask "grisbi" do
  version "2.0.4"
  sha256 "609ee5a2e7866ccf8f89f415a9d2409aae698cbc9b06d00711d7b96c55d7c4d2"

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
