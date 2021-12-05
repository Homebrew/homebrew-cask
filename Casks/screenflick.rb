cask "screenflick" do
  version "3.0.7"
  sha256 "9f76efcdcc81a6e99e1fe6b56bab3fb46f48b326b09cd22aa434cbb0c91abcfa"

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  name "Screenflick"
  desc "Screen recorder with audio"
  homepage "https://www.araelium.com/screenflick-mac-screen-recorder"

  livecheck do
    url "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/updates.json"
    regex(%r{/Screenflick(\d+(?:\.\d+)+)\.zip}i)
  end

  depends_on macos: ">= :mojave"

  app "Screenflick.app"
end
