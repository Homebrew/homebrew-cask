cask :v1 => 'neu' do
  version '1.2.1'
  sha256 '7d46be5ae865882553887f0942fe7d441b71b70a4ad593d3f72c897c47642552'

  url "http://downloads.elegantchaos.com/neu/neu-v#{version}.zip"
  appcast 'http://sparkle.elegantchaos.com/neu/appcast.xml',
          :sha256 => 'fcf80e031459b0c87d4ce0c66ea1b1616278666a9c9be71d014baa61b449c55d'
  homepage 'http://www.elegantchaos.com/neu/'
  license :unknown

  app "neu-v#{version}/Neu.app"
end
