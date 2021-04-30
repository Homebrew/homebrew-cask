cask "silo" do
  version "2021.0.0"
  sha256 "81490457a8b090421291ada3c32b64fd27dc593fd205059afffa853f1f265390"

  url "https://nevercenter.com/silo/download/filearchive/Install_Silo_#{version.major}_#{version.minor}#{version.patch}_mac.dmg"
  name "Silo"
  homepage "https://nevercenter.com/silo/"

  livecheck do
    url "https://nevercenter.com/silo/download/"
    strategy :page_match
    regex(/Silo\s*(\d+(?:\.\d+)*)\s*/)
  end

  app "Silo.app"
end
