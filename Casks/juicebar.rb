cask 'juicebar' do
  version '1.0.61'
  sha256 '2eb8e3a184acd86982f620db08b8c304046b6e0941cdaf3666fc776b03e94a2f'

  url "https://mango.get-juicebar.com/v#{version.major}/bundles/macOS/latest"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://mango.get-juicebar.com/v#{version.major}/bundles/macOS/latest"
  name 'JuiceBar'
  homepage 'https://get-juicebar.com/'

  app 'JuiceBar.app'
end
