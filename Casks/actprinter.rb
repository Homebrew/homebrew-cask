cask 'actprinter' do
  version '3.2.4'
  sha256 '515dc587a96fa94b23c2b4847b8421991232447b8a37d9760847a3505a72a912'

  # actprinter.com was verified as official when first introduced to the cask
  url "https://www.actprinter.com/mac/ACTPrinter%20for%20Mac%20#{version}.zip"
  appcast 'https://www.houdah.com/ACTPrinter/releaseNotes.html'
  name 'ACTPrinter'
  homepage 'https://www.houdah.com/ACTPrinter/'

  app 'ACTPrinter Mac.app'
end
