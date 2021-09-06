cask "nucleo" do
  version "3.1.0"
  sha256 "9f5a2c7607cc0b41a9a0da2aa6b25c718b9d297aaf62ef7aaca75ccd600aecc1"

  url "https://nucleo-app-releases.s3.amazonaws.com/mac/Nucleo_#{version}.zip",
      verified: "nucleo-app-releases.s3.amazonaws.com/"
  name "Nucleo"
  desc "Icon manager and library"
  homepage "https://nucleoapp.com/"

  livecheck do
    url "https://nucleoapp.com/updates"
    regex(%r{href=.*?/Nucleo[._-]v?(\d+(?:\.\d+)+)\.zip}i)
  end

  app "Nucleo.app"
end
