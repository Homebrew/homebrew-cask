cask "fruityrazer" do
  version "1.6"
  sha256 "d48a105df7163646df26f2ca7b9083b596e41c725f812ee4d0f3d7148b80adf6"

  url "https://github.com/FruityRazer/FruityUI/releases/download/v#{version}/FruityUI.zip",
      verified: "github.com/FruityRazer/FruityUI/"
  name "fruityrazer"
  desc "Open-source drivers for Razer devices"
  homepage "https://fruityrazer.github.io/"

  app "FruityUI.app"
end
