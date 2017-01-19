cask 'acorn' do
  version '5.6.1'
  sha256 '98d716aebb93e788f0ddda995734acba7923ba54cfac0cbda96a1bd50cb81454'

  url 'https://secure.flyingmeat.com/download/Acorn.zip'
  appcast "http://www.flyingmeat.com/download/acorn#{version.major}update.xml",
          checkpoint: 'f2cae39743280c31919bdd1262496776914d45815576c14d99ad4706b58eff1a'
  name 'Acorn'
  homepage 'http://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'

  postflight do
    suppress_move_to_applications
  end
end
