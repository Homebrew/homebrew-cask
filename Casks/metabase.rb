cask "metabase" do
  version "0.37.9"
  sha256 "b059e5369822bc80e2bdd4c48be9350b7d1559167ee479bdfb17b7a42340b97e"

  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version}/Metabase.zip",
      verified: "s3.amazonaws.com/downloads.metabase.com/"
  name "Metabase"
  homepage "https://www.metabase.com/"

  livecheck do
    url "https://s3.amazonaws.com/downloads.metabase.com/appcast.xml"
    strategy :sparkle
  end

  app "Metabase.app"
end
