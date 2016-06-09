cask 'rightfont' do
  version '3.2.2'
  sha256 '682a5ac169e68382f6396dabaee26d08e50bb7cca2af9bd9d650f0fc31b6c4a9'

  url "http://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'http://rightfontapp.com/update/appcast.xml',
          checkpoint: '9f4f97ef30386fba224b58e8fbaa18addf36729ad50f4226480fcf9413cc3b79'
  name 'RightFont'
  homepage 'http://rightfontapp.com/'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'RightFont.app'
end
