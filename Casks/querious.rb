cask "querious" do
  version "3.1.2"
  sha256 "baba87743db3ab04980fa2e415df43fa89c58cb07df866b8f4481917cefaca2a"

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
