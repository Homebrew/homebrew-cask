cask 'free-telly' do
  version '16.1'
  sha256 '1cd2e5e9e2ea8132640884623cd172682297225cc1f501693711981fe1b2e276'

  url do
    # FreeTelly is hosted on androidfilehost.com which looks up mirrors to download from
    require 'net/http'
    require 'json'
    # androidfilehost.com was verified as official when first introduced to the cask
    uri = URI('https://www.androidfilehost.com/libs/otf/mirrors.otf.php')
    res = Net::HTTP.post_form(uri, 'submit' => 'submit', 'action' => 'getdownloadmirrors', 'fid' => '24588232905720770')
    JSON.parse(res.body)['MIRRORS'][0]['url']
  end
  name 'FreeTelly'
  homepage 'https://www.tvaddons.ag/freetelly-mac/'

  app 'FreeTelly.app'

  zap delete: [
                '~/Library/Logs/freetelly.log',
                '~/Library/Logs/freetelly.old.log',
                '~/Library/Application Support/FreeTelly',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ag.tvaddons.freetelly.sfl',
                '~/Library/Saved Application State/ag.tvaddons.FreeTelly.savedState',
              ]
end
