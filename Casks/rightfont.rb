cask 'rightfont' do
  version '3.3.0'
  sha256 '35a8af9d4e8489a0238c850dfd0adc144046cec4151144f174b5622a128c48c9'

  url "https://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'https://rightfontapp.com/update/appcast.xml',
          checkpoint: '717b0324b5609f4b51fe1851483a976f2e4d356a092ba470a6fa2a0873b2d51f'
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app 'RightFont.app'
end
