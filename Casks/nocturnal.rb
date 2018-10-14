cask 'nocturnal' do
  version '0.2.1'
  sha256 '97c0672b815bdf678e80a4585e3cf73844c0927fcfcd2beea4a00adcb197bb85'

  url "https://github.com/HarshilShah/Nocturnal/releases/download/#{version}/Nocturnal.zip"
  appcast 'https://github.com/HarshilShah/Nocturnal/releases.atom'
  name 'Nocturnal'
  homepage 'https://github.com/HarshilShah/Nocturnal'

  depends_on macos: '>= :mojave'

  app 'Nocturnal.app'
end
