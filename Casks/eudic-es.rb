cask "eudic-es" do
  version "4.0.1,2020-11-16"
  sha256 "40c09e422e944a27a1a161b2bc67b03d26cca888075497980bf67d63f21a54a1"

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
