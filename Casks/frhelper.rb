cask "frhelper" do
  version "3.9.9,2020-08-08"
  sha256 "7c464b7a7d77cb82c07629b6cc51898b70517d3ad25cc39b57ad6d185ff0bd3a"

  # static.frdic.com/ was verified as official when first introduced to the cask
  url "https://static.frdic.com/pkg/fhmac.dmg?v=#{version.after_comma}",
      user_agent: :fake
  appcast "https://www.eudic.net/v4/fr/app/download",
          must_contain: version.after_comma
  name "Frhelper"
  name "法语助手"
  homepage "https://www.eudic.net/v4/fr/app/frhelper"

  app "Frhelper.app"
end
