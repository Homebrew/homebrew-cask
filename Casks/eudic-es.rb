cask "eudic-es" do
  version "3.9.10,2020-11-01"
  sha256 "98721c6e387acfdc5548d10d2a1a8f831e9496db7f03bf11b2be642e8decc3d7"

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
