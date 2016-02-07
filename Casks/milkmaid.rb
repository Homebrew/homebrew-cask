cask 'milkmaid' do
  version '0.7.6'
  sha256 'a96702396cf80cff9d447844141648f4bbc967302dccf2a709a5b8664fc42450'

  url "https://github.com/downloads/jgallen23/MilkMaid/MilkMaid-#{version}.tar.gz"
  appcast 'https://raw.githubusercontent.com/jgallen23/MilkMaid/master/appcast.xml',
          checkpoint: 'cc637868a5ba18ec3d36e9b72e59200678784646ec7fb1b84a319872c525ff1f'
  name 'MilkMaid'
  homepage 'https://github.com/jgallen23/MilkMaid'
  license :mit

  app 'MilkMaid.app'

  zap delete: '~/Library/Preferences/com.jga.MilkMaid.plist'

  caveats do
    discontinued
  end
end
