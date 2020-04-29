cask 'juicebar' do
  version '1.0.60'
  sha256 '9a640ac759f9cb3e0768ecdafe382bf90afd8015c03ef2061ec6f5ddc30e204f'

  url "https://mango.get-juicebar.com/v#{version.major}/bundles/macOS/latest"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://mango.get-juicebar.com/v#{version.major}/bundles/macOS/latest"
  name 'JuiceBar'
  homepage 'https://get-juicebar.com/'

  app 'JuiceBar.app'
end
