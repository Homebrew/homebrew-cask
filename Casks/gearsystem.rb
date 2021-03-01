cask "gearsystem" do
  version "3.3.0"
  sha256 "cf15a8f3107887daf7cad4e211b7296d437e7c693730aec6a3d8d66ea6e7c270"

  url "https://github.com/drhelius/Gearsystem/releases/download/gearsystem-#{version}/Gearsystem-#{version}-macOS.zip"
  appcast "https://github.com/drhelius/Gearsystem/releases.atom"
  name "Gearsystem"
  homepage "https://github.com/drhelius/Gearsystem"

  app "Gearsystem-#{version}-macOS/Gearsystem.app"
end
