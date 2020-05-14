cask 'rowmote-helper' do
  version '4.2.2'
  sha256 '705223df2b4a655a1d414a369e1d68176617a4a2819a4d6faa615ff7cef040b1'

  url "https://regularrateandrhythm.com/rowmote-pro/rh/rowmote-helper-#{version}.zip"
  appcast 'https://www.regularrateandrhythm.com/apps/rowmote-pro/rowmote-appcast.xml'
  name 'Rowmote Helper'
  homepage 'https://regularrateandrhythm.com/apps/rowmote-pro/'

  auto_updates true

  app 'Rowmote Helper.app'
end
