cask 'neu' do
  version '1.2.1'
  sha256 '7d46be5ae865882553887f0942fe7d441b71b70a4ad593d3f72c897c47642552'

  url "http://downloads.elegantchaos.com/neu/neu-v#{version}.zip"
  appcast 'http://sparkle.elegantchaos.com/neu/appcast.xml',
          :sha256 => 'e298204e7c58e4605e8290bc0d55cc23c6f7ae25246dcec5f8efea3fb655297b'
  name 'Neu'
  homepage 'http://www.elegantchaos.com/neu/'
  license :freemium

  app "neu-v#{version}/Neu.app"
end
