cask 'rightfont' do
  version '4.6'
  sha256 '7484e5b8a41084093766a0064037bd255b9ad5aae43cf035f8323eabb6efcd17'

  url "https://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'https://rightfontapp.com/update/appcast.xml',
          checkpoint: 'fafefa8ff0d05f8e67a778beb15139e9f87e14d7e84b25f71e5f6f6a4ca972c7'
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app 'RightFont.app'
end
