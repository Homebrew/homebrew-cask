cask 'macspice' do
  version '3.1.20'
  sha256 'eb5006a4f3963fa934698adc9591db26f63c908c93f32bd1514a5bd2f8ab2430'

  url "https://www.macspice.com/mirror/binaries/v#{version}/MacSpice3f5.dmg"
  appcast 'https://www.macspice.com/AppCast-v2.xml'
  name 'MacSpice'
  homepage 'https://www.macspice.com/'

  app 'MacSpice.app'
end
