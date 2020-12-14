cask "frhelper" do
  version "4.0.1,2020-11-14"
  sha256 "adba3d685a5e11afcc9ed0eacbb36feaddac0a6c42a3c1dafc2096b00f9081dd"

  url "https://static.frdic.com/pkg/fhmac.dmg?v=#{version.after_comma}",
      verified:   "static.frdic.com/",
      user_agent: :fake
  appcast "https://www.eudic.net/v4/fr/app/download",
          must_contain: version.after_comma
  name "Frhelper"
  name "法语助手"
  homepage "https://www.eudic.net/v4/fr/app/frhelper"

  app "Frhelper.app"
end
