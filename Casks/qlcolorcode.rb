cask 'qlcolorcode' do
  version '2.0.9'
  sha256 '2b373ea51148f43a0b7e7feafcf2a5422692d7a03e787afdd3692ec4341bf33f'

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
