cask "elephicon" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.6.2"

  if Hardware::CPU.intel?
    sha256 "d0a6a198173fe2d5130b70befc8a382e85c2024632986e1fbc991bcdb790385a"
  else
    sha256 "c6faabb9bb261d0b473de1826e505e1663718530bd5886d4746ba640c7eed840"
  end

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.zip"
  name "Elephicon"
  desc "GUI wrapper for png2icons"
  homepage "https://github.com/sprout2000/elephicon/"

  app "Elephicon.app"
end
