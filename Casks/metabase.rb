cask "metabase" do
  version "0.40.3.1"
  sha256 "c43b04ae06b9536ad86be7144ff5c4257aad5438ee8359c8acd7d5db18631266"

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
