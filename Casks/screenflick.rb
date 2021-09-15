cask "screenflick" do
  version "2.7.59"
  sha256 "c2e853cb40c196848c87dde5bd511ee3970b80e3c8f2786ffd120d1cb61743b7"

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  name "Screenflick"
  desc "Screen recorder with audio"
  homepage "https://www.araelium.com/screenflick-mac-screen-recorder"

  livecheck do
    url "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/updates.json"
    regex(%r{/Screenflick(\d+(?:\.\d+)+)\.zip}i)
  end

  depends_on macos: ">= :sierra"

  app "Screenflick.app"
end
