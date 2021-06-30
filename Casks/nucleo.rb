cask "nucleo" do
  version "3.0.5"
  sha256 "dfb8a41dc29f39ab2f7fcb66780bf3156b727cd8e39c83796059c4de3128a0ad"

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
