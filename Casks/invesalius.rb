cask "invesalius" do
  version "3.1.99996"
  sha256 "dac9b2ad8875b04862d0945906892b163ca3fbf9923138cb180aae181c7a2cab"

  url "https://github.com/invesalius/invesalius3/releases/download/v#{version}/InVesalius.#{version}.dmg"
  name "InVesalius"
  desc "3D medical imaging reconstruction software"
  homepage "https://github.com/invesalius/invesalius3/"

  app "InVesalius.app"
end
