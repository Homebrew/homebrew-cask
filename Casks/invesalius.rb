cask "invesalius" do
  version "3.1.99998"
  sha256 "315f4850f8b84f5116eadaaf76434a5337e84b1fc3fbc303d87d80c0594c98b7"

  url "https://github.com/invesalius/invesalius3/releases/download/v#{version}/InVesalius.#{version}.dmg"
  name "InVesalius"
  desc "3D medical imaging reconstruction software"
  homepage "https://github.com/invesalius/invesalius3/"

  app "InVesalius.app"
end
