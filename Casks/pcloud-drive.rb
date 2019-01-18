cask 'pcloud-drive' do
  version '3.7.9'
  sha256 '0f251933096e44cdcc15334d6d27fec347dad5d66134f1dc93e21a152a2a163c'

  url do
    require 'net/http'
    require 'json'
    api = 'https://api.pcloud.com/'
    code = 'XZNF4C7Zrqw256sL45jrAn7RhtDVnkKAlOw7'
    uri = URI(api + 'getpublinkdownload?code=' + code)
    response = Net::HTTP.get(uri)
    data = JSON.parse(response)
    data['hosts'][0] + data['path']
  end
  name 'pCloud Drive'
  homepage 'https://www.pcloud.com/'

  depends_on cask: 'osxfuse'

  pkg 'pCloud Drive 3.7.9.pkg'

  uninstall pkgutil: 'com.mobileinno.pkg.pCloudDrive'
end
