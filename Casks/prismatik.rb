cask "prismatik" do
  version "6.0.0.104"
  sha256 "72e94944f9732ab737836a399a6f92693d1dd1717e0bef0cae3d96654b1dd2af"

  # woodenshark.com/4lightpack/ was verified as official when first introduced to the cask
  url "https://woodenshark.com/4lightpack/Prismatik_#{version}_signed.dmg"
  appcast "https://lightpack.tv/pages/downloads"
  name "Prismatik"
  homepage "https://lightpack.tv/pages/downloads"

  app "Prismatik.app"
end
