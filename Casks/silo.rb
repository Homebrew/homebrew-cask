cask "silo" do
  version "2.5.6"
  sha256 "c0c0075fc410ec6ca2fad349a75c8040b5f24f1fa96b0fbb0953d1d6e2264e55"

  url "https://nevercenter.com/silo/download_file/filearchive/Install_Silo_#{version.dots_to_underscores}_mac.dmg"
  appcast "https://nevercenter.com/silo/download_file/"
  name "Silo"
  homepage "https://nevercenter.com/silo/"

  app "Silo #{version.major}.app"
end
