cask "scrivener" do
  version "3.1.5,12258"
  sha256 "cc8ead0d3f409fcd4bd1467a7ce443d4c10b58cfbbbc08386bb44150b4803806"

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
