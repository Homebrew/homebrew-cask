cask "eudic" do
  version "2020-08-07,3.9.9"
  sha256 "ddd1c890d2affdf7067785f56c7572b80842ac2fde317f663d1f6d6739d46348"

  # static.frdic.com/ was verified as official when first introduced to the cask
  url "https://static.frdic.com/pkg/eudicmac.dmg?v=#{version.before_comma}",
      user_agent: :fake
  appcast "https://www.eudic.net/v4/en/app/download"
  name "Eudic"
  name "欧路词典"
  homepage "https://www.eudic.net/v4/en/app/eudic"

  app "Eudic.app"
end
