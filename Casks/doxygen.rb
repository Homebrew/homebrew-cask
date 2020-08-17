cask "doxygen" do
  version "1.8.19"
  sha256 "a7d820edf9ef00768b01100867565f09d64abafab145d5d102eed35dc442567e"

  url "https://doxygen.nl/files/Doxygen-#{version}.dmg"
  appcast "https://www.doxygen.nl/download.html"
  name "Doxygen"
  homepage "https://www.doxygen.nl/"

  app "Doxygen.app"
end
