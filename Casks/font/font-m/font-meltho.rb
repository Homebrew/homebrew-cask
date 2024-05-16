cask "font-meltho" do
  version "1.21,2018.06"
  sha256 "a22e61b0a48ac6c3e8bbc79d8f4dafcbd7ddb9572cf63b50478b9889cfbfdac4"

  url "https://bethmardutho.org/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/melthofonts-1.zip"
  name "Meltho Fonts"
  homepage "https://bethmardutho.org/syriacmac/"

  font "melthofonts-1/melthofonts-#{version.before_comma}/SyrCOMAdiabene.otf"
  font "melthofonts-1/melthofonts-#{version.before_comma}/SyrCOMAntioch.otf"
  font "melthofonts-1/melthofonts-#{version.before_comma}/SyrCOMBatnan.otf"
  font "melthofonts-1/melthofonts-#{version.before_comma}/SyrCOMBatnanBold.otf"
  font "melthofonts-1/melthofonts-#{version.before_comma}/SyrCOMCtesiphon.otf"
  font "melthofonts-1/melthofonts-#{version.before_comma}/SyrCOMEdessa.otf"
  font "melthofonts-1/melthofonts-#{version.before_comma}/SyrCOMJerusalem.otf"
  font "melthofonts-1/melthofonts-#{version.before_comma}/SyrCOMJerusalemBold.otf"
  font "melthofonts-1/melthofonts-#{version.before_comma}/SyrCOMJerusalemItalic.otf"
  font "melthofonts-1/melthofonts-#{version.before_comma}/SyrCOMJerusalemOutline.otf"
  font "melthofonts-1/melthofonts-#{version.before_comma}/SyrCOMKharput.otf"
  font "melthofonts-1/melthofonts-#{version.before_comma}/SyrCOMMalankara.otf"
  font "melthofonts-1/melthofonts-#{version.before_comma}/SyrCOMMardin.otf"
  font "melthofonts-1/melthofonts-#{version.before_comma}/SyrCOMMardinBold.otf"
  font "melthofonts-1/melthofonts-#{version.before_comma}/SyrCOMMidyat.otf"
  font "melthofonts-1/melthofonts-#{version.before_comma}/SyrCOMNisibin.otf"
  font "melthofonts-1/melthofonts-#{version.before_comma}/SyrCOMNisibinOutline.otf"
  font "melthofonts-1/melthofonts-#{version.before_comma}/SyrCOMQenNeshrin.otf"
  font "melthofonts-1/melthofonts-#{version.before_comma}/SyrCOMTalada.otf"
  font "melthofonts-1/melthofonts-#{version.before_comma}/SyrCOMTurAbdin.otf"
  font "melthofonts-1/melthofonts-#{version.before_comma}/SyrCOMUrhoy.otf"
  font "melthofonts-1/melthofonts-#{version.before_comma}/SyrCOMUrhoyBold.otf"

  # No zap stanza required
end
