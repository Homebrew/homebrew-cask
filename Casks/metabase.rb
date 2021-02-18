cask "metabase" do
  version "0.38.0"
  sha256 "2e0b6a8557be56e066a26e9caf99b27127bc689832adbdc6e2e9de41f6d7b238"

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
