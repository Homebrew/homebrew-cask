cask 'rightfont' do
  version '3.2.1'
  sha256 'd410b6ebe678c750a5a89755c6f5f648c66f8d398b167d897c8b773928c2e4a2'

  url "http://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'http://rightfontapp.com/update/appcast.xml',
          checkpoint: '0cbd8d5e4014af0586c3c70a92163f5565e3fe4b593dc994df54356dbec7ec22'
  name 'RightFont'
  homepage 'http://rightfontapp.com/'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'RightFont.app'
end
