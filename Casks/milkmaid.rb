cask 'milkmaid' do
  version '0.7.6'
  sha256 'a96702396cf80cff9d447844141648f4bbc967302dccf2a709a5b8664fc42450'

  url "https://github.com/downloads/jgallen23/MilkMaid/MilkMaid-#{version}.tar.gz"
  appcast 'https://raw.githubusercontent.com/jgallen23/MilkMaid/master/appcast.xml'
  name 'MilkMaid'
  homepage 'https://github.com/jgallen23/MilkMaid'

  app 'MilkMaid.app'

  zap trash: '~/Library/Preferences/com.jga.MilkMaid.plist'

  caveats do
    discontinued
  end
end
