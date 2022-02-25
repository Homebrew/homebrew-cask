cask "jadengeller-helium" do
  version "1.9"
  sha256 "32bede939e1dcbbfe6ea879888456fbff30f1db2c764478fc7ba08d52e2f69fb"

  url "https://github.com/JadenGeller/Helium/releases/download/#{version}/Helium.app.zip"
  name "jadengeller-helium"
  desc "Helium is a floating browser window"
  homepage "https://github.com/JadenGeller/Helium/"

  app "helium.app"
end
