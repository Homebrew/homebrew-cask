cask "eudic" do
  version "3.9.10,2020-08-20"
  sha256 "2c5af4bdeb6b918c3007b97189669f1fdaabd8929730a4bb6df3e3d367475cfe"

  # static.frdic.com/ was verified as official when first introduced to the cask
  url "https://static.frdic.com/pkg/eudicmac.dmg?v=#{version.after_comma}",
      user_agent: :fake
  appcast "https://www.eudic.net/v4/en/app/download",
          must_contain: version.after_comma
  name "Eudic"
  name "欧路词典"
  homepage "https://www.eudic.net/v4/en/app/eudic"

  app "Eudic.app"
end
