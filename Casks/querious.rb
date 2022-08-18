cask "querious" do
  version "3.3"
  sha256 "66cedc5213800c9298495e623c7ab7595d49c7ce69f7b17ee3e85f281a1d0982"

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
