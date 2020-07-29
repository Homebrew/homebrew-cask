cask 'jalview' do
  version '2.11.1.0'
  sha256 'd2bd8b4db3963381ace200c185e0ea4ebd63f61878a3466ecdc0cb1095d198c8'

  url "https://www.jalview.org/getdown/release/install4j/1.8/Jalview-#{version.dots_to_underscores}-macos-java_8.dmg"
  appcast 'https://www.jalview.org/getdown/release/install4j/1.8/updates.xml'
  name 'Jalview'
  homepage 'https://www.jalview.org/'

  app 'Jalview.app'
end
