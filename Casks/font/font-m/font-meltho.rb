cask "font-meltho" do
  version "1.21,2018,06"
  sha256 "a22e61b0a48ac6c3e8bbc79d8f4dafcbd7ddb9572cf63b50478b9889cfbfdac4"

  url "https://bethmardutho.org/wp-content/uploads/#{version.csv.second}/#{version.csv.third}/melthofonts-#{version.csv.first.major}.zip"
  name "Meltho Fonts"
  homepage "https://bethmardutho.org/meltho/"

  livecheck do
    url :homepage
    regex(%r{href=.*?uploads/(\d+)/(\d+)/.*?melthofonts[._-]v?(\d+(?:\.\d+)+)}i)
    strategy :page_match do |page, regex|
      page&.scan(regex)&.map { |match| "#{match[2]},#{match[0]},#{match[1]}" }
    end
  end

  font "melthofonts-#{version.csv.first.major}/melthofonts-#{version.csv.first}/SyrCOMAdiabene.otf"
  font "melthofonts-#{version.csv.first.major}/melthofonts-#{version.csv.first}/SyrCOMAntioch.otf"
  font "melthofonts-#{version.csv.first.major}/melthofonts-#{version.csv.first}/SyrCOMBatnan.otf"
  font "melthofonts-#{version.csv.first.major}/melthofonts-#{version.csv.first}/SyrCOMBatnanBold.otf"
  font "melthofonts-#{version.csv.first.major}/melthofonts-#{version.csv.first}/SyrCOMCtesiphon.otf"
  font "melthofonts-#{version.csv.first.major}/melthofonts-#{version.csv.first}/SyrCOMEdessa.otf"
  font "melthofonts-#{version.csv.first.major}/melthofonts-#{version.csv.first}/SyrCOMJerusalem.otf"
  font "melthofonts-#{version.csv.first.major}/melthofonts-#{version.csv.first}/SyrCOMJerusalemBold.otf"
  font "melthofonts-#{version.csv.first.major}/melthofonts-#{version.csv.first}/SyrCOMJerusalemItalic.otf"
  font "melthofonts-#{version.csv.first.major}/melthofonts-#{version.csv.first}/SyrCOMJerusalemOutline.otf"
  font "melthofonts-#{version.csv.first.major}/melthofonts-#{version.csv.first}/SyrCOMKharput.otf"
  font "melthofonts-#{version.csv.first.major}/melthofonts-#{version.csv.first}/SyrCOMMalankara.otf"
  font "melthofonts-#{version.csv.first.major}/melthofonts-#{version.csv.first}/SyrCOMMardin.otf"
  font "melthofonts-#{version.csv.first.major}/melthofonts-#{version.csv.first}/SyrCOMMardinBold.otf"
  font "melthofonts-#{version.csv.first.major}/melthofonts-#{version.csv.first}/SyrCOMMidyat.otf"
  font "melthofonts-#{version.csv.first.major}/melthofonts-#{version.csv.first}/SyrCOMNisibin.otf"
  font "melthofonts-#{version.csv.first.major}/melthofonts-#{version.csv.first}/SyrCOMNisibinOutline.otf"
  font "melthofonts-#{version.csv.first.major}/melthofonts-#{version.csv.first}/SyrCOMQenNeshrin.otf"
  font "melthofonts-#{version.csv.first.major}/melthofonts-#{version.csv.first}/SyrCOMTalada.otf"
  font "melthofonts-#{version.csv.first.major}/melthofonts-#{version.csv.first}/SyrCOMTurAbdin.otf"
  font "melthofonts-#{version.csv.first.major}/melthofonts-#{version.csv.first}/SyrCOMUrhoy.otf"
  font "melthofonts-#{version.csv.first.major}/melthofonts-#{version.csv.first}/SyrCOMUrhoyBold.otf"

  # No zap stanza required
end
