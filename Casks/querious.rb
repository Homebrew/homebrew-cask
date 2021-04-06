cask "querious" do
  version "3.0.11"
  sha256 "43426c65d9134d949a34f916fed544f2bf04be62f4844a8ab7379ae6f2d8a215"

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
