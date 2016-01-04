cask 'airtool' do
  version '1.2.1'
  sha256 '3bd3677cdf65b20d93e24c10908c5cdf1231f59696baa72af0919cf489a70f9e'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/airtool/airtool_#{version}.pkg"
  appcast 'http://www.adriangranados.com/appcasts/airtoolcast.xml',
          :sha256 => 'b8d00edbe68c31a79b2ba4ae74f810619544df39b460dad5570e5f3aaae485f9'
  name 'Airtool'
  homepage 'http://www.adriangranados.com/apps/airtool'
  license :gratis

  pkg "airtool_#{version}.pkg"

  uninstall :pkgutil    => [
                             'com.adriangranados.airtool.airtool-bpf.*',
                             'com.adriangranados.airtool.Airtool.pkg',
                           ],
            :launchctl  => 'com.adriangranados.airtool.airtool-bpf.pkg',
            :login_item => 'Airtool'

  zap :delete => [
                   '/Library/Application Support/Airtool',
                   '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.adriangranados.airtool.sfl',
                 ]
end
