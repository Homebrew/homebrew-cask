cask "scrivener" do
  version "3.2,14343"
  sha256 "702f98dab6003d828585d0c807c135c9ca897c0f654310832829a479fb2fa715"

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
