cask "neardrop" do
  version "2.0.2"
  sha256 "b270f084d2a25d3c3f7302112739898dbf6e1fd48b4b560d3f80b04c482f95a8"

  url "https://github.com/grishka/NearDrop/releases/download/v2.0.2/NearDrop.app.zip"
  
  name "NearDrop"
  desc "NearDrop is a partial implementation of Google's Nearby Share for macOS"
  homepage "https://github.com/grishka/NearDrop"

  livecheck do
    url "https://github.com/grishka/NearDrop/releases/download/v2.0.2/NearDrop.app.zip"
    strategy :header_match do |headers|
      headers["location"][%r{/(\d+)/NearDrop.app\.zip}i, 1]
    end
  end

  app "NearDrop.app"

  zap trash: [
        "~/Library/Application Scripts/me.grishka.NearDrop.ShareExtension",
        "~/Library/Application Scripts/me.grishka.NearDrop",
        "~/Library/Containers/me.grishka.NearDrop.ShareExtension",
        "~/Library/Containers/me.grishka.NearDrop",
      ]
end
