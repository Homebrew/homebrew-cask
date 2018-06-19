cask 'qlcolorcode' do
  version '2.1.0'
  sha256 '104e048948ecd2c9da6e6cd24c49e0adc62b7d9623fa1fa091a8cbe8ec2fced4'

  url "https://github.com/anthonygelibert/QLColorCode/releases/download/release-#{version}/QLColorCode.qlgenerator.zip"
  appcast 'https://github.com/anthonygelibert/QLColorCode/releases.atom'
  name 'QLColorCode'
  homepage 'https://github.com/anthonygelibert/QLColorCode'

  depends_on formula: 'highlight'

  qlplugin 'QLColorCode.qlgenerator'

  postflight do
    system_command '/usr/bin/defaults', args: ['write', 'org.n8gray.QLColorCode', 'pathHL', "#{HOMEBREW_PREFIX}/bin/highlight"]
  end

  zap trash: '~/Library/Preferences/org.n8gray.QLColorCode.plist'
end
