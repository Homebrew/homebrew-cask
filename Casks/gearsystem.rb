cask "gearsystem" do
  version "3.1.0"
  sha256 "2235cacee8eab55cf48796e3784f5b1ac2a474d1564e0d8f82799e6ad2b8c12f"

  url "https://github.com/drhelius/Gearsystem/releases/download/gearsystem-#{version}/Gearsystem-#{version}-macOS.zip"
  appcast "https://github.com/drhelius/Gearsystem/releases.atom"
  name "Gearsystem"
  homepage "https://github.com/drhelius/Gearsystem"

  app "Gearsystem-#{version}-macOS/Gearsystem.app"
end
