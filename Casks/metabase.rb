cask "metabase" do
  version "0.39.3"
  sha256 "21ef1256239816e07ee9008f72bb1d00386bfc13be2f1049793cc4ffb3f125ed"

  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version}/Metabase.zip",
      verified: "s3.amazonaws.com/downloads.metabase.com/"
  name "Metabase"
  desc "Business intelligence and analytics"
  homepage "https://www.metabase.com/"

  livecheck do
    url "https://s3.amazonaws.com/downloads.metabase.com/appcast.xml"
    strategy :sparkle
  end

  app "Metabase.app"
end
