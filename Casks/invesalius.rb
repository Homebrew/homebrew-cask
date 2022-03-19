cask "invesalius" do
  version "3.1.99997"
  sha256 "11399491620b9a2084b1ad9b078df627698908545f6de1fb744e78a5ff7c9cd5"

  url "https://github.com/invesalius/invesalius3/releases/download/v#{version}/InVesalius.#{version}.dmg"
  name "InVesalius"
  desc "3D medical imaging reconstruction software"
  homepage "https://github.com/invesalius/invesalius3/"

  app "InVesalius.app"
end
