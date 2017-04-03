cask 'espresso' do
  version '3.0'
  sha256 '6d93eb9648413eeaac91d4237570a24554f1b3104c3e272a31188e2ebdd864e1'

  url 'http://presto.espressoapp.com/downloads/Espresso%20v3.zip'
  appcast "https://update.macrabbit.com/espresso/#{version}.xml",
          checkpoint: '900b7d97f5d419eb7cd390b6416043fa57763a233ea2482227d39764fc17acb1'
  name 'Espresso'
  homepage 'http://espressoapp.com/'

  app 'Espresso.app'
end
