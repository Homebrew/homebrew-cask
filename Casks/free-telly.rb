cask 'free-telly' do
  version '16.1'
  sha256 '1cd2e5e9e2ea8132640884623cd172682297225cc1f501693711981fe1b2e276'

  url do
    # FreeTelly is hosted on androidfilehost.com which looks up mirrors to download from
    require 'net/http'
    require 'json'
    # androidfilehost.com was verified as official when first introduced to the cask
    uri = URI('https://www.androidfilehost.com/libs/otf/mirrors.otf.php')
    req = Net::HTTP::Post.new(uri)
    file_id = '24588232905720770'
    req.set_form_data('submit' => 'submit', 'action' => 'getdownloadmirrors', 'fid' => file_id)
    req['Referer'] = "https://www.androidfilehost.com/?fid=#{file_id}"
    res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == 'https') { |http| http.request(req) }
    JSON.parse(res.body)['MIRRORS'][0]['url']
  end
  name 'FreeTelly'
  homepage 'https://www.tvaddons.ag/freetelly-mac-kodi/'

  app 'FreeTelly.app'

  zap delete: [
                '~/Library/Logs/freetelly.log',
                '~/Library/Logs/freetelly.old.log',
                '~/Library/Application Support/FreeTelly',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ag.tvaddons.freetelly.sfl',
                '~/Library/Saved Application State/ag.tvaddons.FreeTelly.savedState',
              ]
end
