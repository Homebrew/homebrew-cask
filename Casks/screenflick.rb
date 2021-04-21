cask "screenflick" do
  version "2.7.57"
  sha256 "425683c447e34eccf6cb555fac890523b684ec3198c362d809c35c93174c23d1"

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  name "Screenflick"
  homepage "https://www.araelium.com/screenflick/"

  livecheck do
    url "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/updates.json"
    strategy :page_match
    regex(%r{/Screenflick(\d+(?:\.\d+)*)\.zip}i)
  end

  app "Screenflick.app"
end
