cask "gearsystem" do
  version "3.2.0"
  sha256 "497013f2988490f2b9d0f58fd847c91c899cd05eb5a7a5f00370a4760b2f23a6"

  url "https://github.com/drhelius/Gearsystem/releases/download/gearsystem-#{version}/Gearsystem-#{version}-macOS.zip"
  appcast "https://github.com/drhelius/Gearsystem/releases.atom"
  name "Gearsystem"
  homepage "https://github.com/drhelius/Gearsystem"

  app "Gearsystem-#{version}-macOS/Gearsystem.app"
end
