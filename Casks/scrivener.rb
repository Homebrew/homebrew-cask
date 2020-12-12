cask "scrivener" do
  version "3.2.1,14481"
  sha256 "4bb2a6c16f99d7d16a6edec9cfef865925d283f23e85cc6010edbcdc191abdce"

  # scrivener.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://scrivener.s3.amazonaws.com/mac_updates/Scrivener_1012_#{version.after_comma}.zip"
  appcast "https://www.literatureandlatte.com/downloads/scrivener-#{version.major}.xml"
  name "Scrivener"
  desc "Word processing software with a typewriter style"
  homepage "https://literatureandlatte.com/scrivener.php"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Scrivener.app"
end
