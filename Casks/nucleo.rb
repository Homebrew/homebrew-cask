cask "nucleo" do
  version "3.1.5"
  sha256 "dd79768b43405c95e821e1bab2194db149f2dfe62f777de4a4983973714049bd"

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
