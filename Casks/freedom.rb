cask "freedom" do
  version "2.12.3,2063.1"
  sha256 "03df1a466692559fb36bb6b9feaad5544f2c4c2483dbeac201467a4a7adfd339"

  url "https://cdn.freedom.to/installers/updates/mac/#{version.csv.first}/Freedom.zip"
  name "Freedom"
  desc "App and website blocker"
  homepage "https://freedom.to/"

  livecheck do
    url "https://cdn.freedom.to/installers/updates/mac/Appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Freedom.app"
end
