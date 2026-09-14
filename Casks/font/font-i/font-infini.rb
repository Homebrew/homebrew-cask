cask "font-infini" do
  version "1.003"
  sha256 :no_check

  url "https://www.cnap.fr/sites/infini/en/download/Infini-cnap-engl_fonts-specimen-v2.zip"
  name "Infini"
  homepage "https://www.cnap.fr/sites/infini/en/"

  livecheck do
    skip "No version information available"
  end

  font "Infini-cnap-engl_fonts-specimen-v2/01_Fonts/01_Regular/infini-regular.otf"
  font "Infini-cnap-engl_fonts-specimen-v2/01_Fonts/02_Italic/infini-italic.otf"
  font "Infini-cnap-engl_fonts-specimen-v2/01_Fonts/03_Bold/infini-bold.otf"
  font "Infini-cnap-engl_fonts-specimen-v2/01_Fonts/04_Pictos/infini-picto.otf"

  # No zap stanza required
end
