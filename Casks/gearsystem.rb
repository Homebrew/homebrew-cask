cask "gearsystem" do
  version "3.4.0"
  sha256 "da7143dbb2816a6de2a979531965ebf581f416202fb4267544a03023d4121ac2"

  url "https://github.com/drhelius/Gearsystem/releases/download/gearsystem-#{version}/Gearsystem-#{version}-macOS.zip"
  name "Gearsystem"
  homepage "https://github.com/drhelius/Gearsystem"

  app "Gearsystem-#{version}-macOS/Gearsystem.app"
end
