cask "querious" do
  version "3.1.3"
  sha256 "84ea48bef83be094e0e77f4aca95edbf4eb4aea2db3dadbec0fe97deb63b2181"

  url "https://www.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  name "Querious #{version.major}"
  homepage "https://www.araelium.com/querious/"

  livecheck do
    url "https://arweb-assets.s3.amazonaws.com/downloads/querious/updates.json"
    strategy :page_match
    regex(/Querious(\d+(?:\.\d+)*)\.zip/i)
  end

  auto_updates true

  app "Querious.app"
end
