cask "metabase" do
  version "0.37.2"
  sha256 "23092888db99d640c5b050dc216223fd2f34c7417b85a8c04ae88257bb96eb92"

  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version}/Metabase.zip",
      verified: "s3.amazonaws.com/downloads.metabase.com/"
  appcast "https://s3.amazonaws.com/downloads.metabase.com/appcast.xml"
  name "Metabase"
  homepage "https://www.metabase.com/"

  app "Metabase.app"
end
