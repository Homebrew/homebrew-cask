cask "metabase" do
  version "0.41.1"
  sha256 "c937d0426f6f9fe43750228a21eab6624e5d37c067275b549304cd80f701776b"

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
