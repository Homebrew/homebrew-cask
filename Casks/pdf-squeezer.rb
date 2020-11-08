cask "pdf-squeezer" do
  version "4.2"
  sha256 "9b6f46c29d1410848f47d7d2dbf39ff7d585861155a8ea8b3124bcb990fded94"

  url "https://www.witt-software.com/downloads/pdfsqueezer/PDF%20Squeezer.dmg"
  appcast "https://www.witt-software.com/downloads/pdfsqueezer/pdfsq4-appcast.xml"
  name "PDF Squeezer"
  desc "PDF compression tool"
  homepage "https://witt-software.com/pdfsqueezer/"

  app "PDF Squeezer.app"
end
