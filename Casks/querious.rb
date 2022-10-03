cask "querious" do
  version "3.3.1"
  sha256 "38fae26c271359ea7d40d7ac9ff16c2bbb13433c1d6ce3178acb1e8e3f998742"

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
