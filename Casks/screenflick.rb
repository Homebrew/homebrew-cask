cask "screenflick" do
  version "3.0.4"
  sha256 "05884717298595adbb0b4750066f6d0dc13d65a3afba1af5699c10d2ad609457"

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
