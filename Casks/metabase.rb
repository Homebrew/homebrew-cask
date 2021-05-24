cask "metabase" do
  version "0.39.2"
  sha256 "e13fc25c3ae1ad9db8c1cefc8775b41bee2c1d331ea94e2761cc928e8d172933"

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
