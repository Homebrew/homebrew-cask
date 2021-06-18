cask "eudic-es" do
  version "4.1.1,2021-05-11"
  sha256 "99e04ec7b1ffa7c16c85befcef5dea96f347b9914dbf3d3b4ffc6de40e30155d"

  url "https://static.frdic.com/pkg/ehmac.dmg?v=#{version.after_comma}",
      verified:   "static.frdic.com/",
      user_agent: :fake
  appcast "https://www.eudic.net/v4/es/app/download",
          must_contain: version.after_comma
  name "Eshelper"
  name "Spanish Assistant"
  name "西语助手"
  desc "Spanish dictionary"
  homepage "https://www.eudic.net/v4/es/app/download"

  app "Eudic_es.app"
end
