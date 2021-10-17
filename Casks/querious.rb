cask "querious" do
  version "3.1.4"
  sha256 "53a7457ea0e3945f40744fdd5178d65504e153bfe3e6b6b07340b1a56272917f"

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
