cask "cheetah3d" do
  version "7.5.1"
  sha256 :no_check

  url "https://www.cheetah3d.com/download/Cheetah3D.dmg"
  name "Cheetah3D"
  desc "3D modeling, rendering and animation software"
  homepage "https://www.cheetah3d.com/"

  livecheck do
    url "https://www.cheetah3d.com/download.php"
    regex(%r{Download\s<br/>Cheetah3D\s(\d+(?:\.\d+)+)}i)
  end

  app "Cheetah3D.app"
end
