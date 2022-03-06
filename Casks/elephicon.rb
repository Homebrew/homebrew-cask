cask "elephicon" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.6.2"
  if Hardware::CPU.intel?
    sha256 "93aea28776f9853f3c1c6b09afccc8a390bf3f2c3a2a1891e51a26a802acc010"
  else
    sha256 "4906b3c174b193241b90a3a161b0a7836a67738aba6ac6436d5867b5561c8411"
  end

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.zip"
  name "Elephicon"
  desc "A GUI wrapper for png2icons"
  homepage "https://github.com/sprout2000/elephicon/"

  app "Elephicon.app"
end
