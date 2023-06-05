cask "querious" do
  version "3.3.2"
  sha256 "74016295ef07865c04405a2ff7593377544f60d0a930f219e4689e21ae733041"

  url "https://www.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  name "Querious #{version.major}"
  desc "MySQL and compatible databases tool"
  homepage "https://www.araelium.com/querious/"

  livecheck do
    url "https://arweb-assets.s3.amazonaws.com/downloads/querious/updates.json"
    regex(/Queriousv?(\d+(?:\.\d+)+)\.zip/i)
  end

  auto_updates true

  app "Querious.app"
end
