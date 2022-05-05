cask "leela" do
  version "0.11.0"
  sha256 "f2c11799f7b548e1ca1f6ba8dca330d9ec44eed4d1a53439b5bceef86e0d0ae1"

  url "https://sjeng.org/dl/Leela_#{version}.dmg"
  name "Leela"
  desc "Go playing program with easy to use graphical interface"
  homepage "https://sjeng.org/leela.html"

  livecheck do
    url "https://sjeng.org/leela.html"
    regex(%r{href=.*?/Leela_(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "Leela.app"
  app "Leela OpenCL.app"
end
