cask "metabase" do
  version "0.41.6"
  sha256 "d9fbdab1cf0529d2b56b83367fed61c1b202438d8e3264669a4ffda223229037"

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
