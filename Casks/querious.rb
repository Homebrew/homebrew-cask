cask "querious" do
  version "3.2.2"
  sha256 "f091ebddf677835273d6e0450aae5c246be290a9b5d0a77e6e83d50ea5be1acf"

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
