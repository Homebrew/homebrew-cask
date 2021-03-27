cask "eudic-es" do
  version "4.0.2,2020-12-20"
  sha256 "53da36d99301c36ebf26ed442c7bb4c4f14af4f8edd1d532b4dab0b38d2cdd47"

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
