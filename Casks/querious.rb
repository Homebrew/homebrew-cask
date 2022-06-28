cask "querious" do
  version "3.2.1"
  sha256 "7a11fd134d34d14347e684579f2e49238e33100f143ee58b80a24984f3e7b0a3"

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
