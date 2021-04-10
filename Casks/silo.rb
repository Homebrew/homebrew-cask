cask "silo" do
  version "2.5.6"
  sha256 "c0c0075fc410ec6ca2fad349a75c8040b5f24f1fa96b0fbb0953d1d6e2264e55"

  url "https://nevercenter.com/silo/download_file/filearchive/Install_Silo_#{version.dots_to_underscores}_mac.dmg"
  name "Silo"
  homepage "https://nevercenter.com/silo/"

  livecheck do
    url "https://nevercenter.com/silo/download_file/"
    strategy :page_match
    regex(%r{href=.*?/Install_Silo_(\d+(?:\.\d+)*)_mac\.dmg}i)
  end

  app "Silo #{version.major}.app"
end
