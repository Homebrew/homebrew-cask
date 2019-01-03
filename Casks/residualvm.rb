cask 'residualvm' do
  version '0.3.1'
  sha256 '35843fb78390e008318ae416e4875deb3b01257b7efb4ff5882b037a83c49cff'

  url "http://www.residualvm.org/downloads/release/#{version}/residualvm-#{version}-macosx-intel32.dmg"
  name 'ResidualVM'
  homepage 'http://www.residualvm.org/'

  depends_on macos: '>= :lion'

  app 'ResidualVM.app'

  zap trash: [
               '~/Library/Logs/residualvm.log',
               '~/Library/Preferences/org.residualvm.residualvm.plist',
               '~/Library/Preferences/ResidualVM Preferences',
             ]
end
