cask 'rightfont' do
  version '4.5'
  sha256 '3d133ea2ba9db94c41abfc132b52a39783f28d78cef84a28bc3e4bf9901955dc'

  url "https://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'https://rightfontapp.com/update/appcast.xml',
          checkpoint: 'd1f93d47ccc0c270b0c5fae97efd7d7ceaadd784c04328fac98c8afd304c90f2'
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app 'RightFont.app'
end
