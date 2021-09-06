cask "invesalius" do
  version "3.1.99995"
  sha256 "e9ee3a7548cee911355440fb87362a14080e4ec8372b85fdb6dd118cb294d173"

  url "https://github.com/invesalius/invesalius3/releases/download/v#{version}/InVesalius.#{version}.dmg"
  name "InVesalius"
  desc "3D medical imaging reconstruction software"
  homepage "https://github.com/invesalius/invesalius3/"

  app "InVesalius.app"
end
