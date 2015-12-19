cask 'marked' do
  version '2.5.3910'
  sha256 'd3c9193fff0c349e0efaf5f14fd9c44d18545044e469d27340ef2c44864f02de'

  # abyss.designheresy.com is the official download host per the appcast feed
  url "http://abyss.designheresy.com/marked/Marked#{version}.zip"
  appcast 'http://abyss.designheresy.com/marked/marked.xml'
  name 'Marked'
  homepage 'http://marked2app.com'
  license :commercial

  app 'Marked 2.app'
end
