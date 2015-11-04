cask :v1 => 'rightfont' do
  version '2.2.1'
  sha256 '236c103ff1a8dc48b276f1a2e72fefe6864ca847eaadfb872429d7da20b9db29'

  url "http://rightfontapp.com/downloads/#{version}/rightfont.zip"
  name 'RightFont'
  appcast 'http://rightfontapp.com/update/appcast.xml',
          :sha256 => '5f32a791c0594eb3c3fe656c80874292a765f9ec7058424e962bfda9862097c0'
  homepage 'http://rightfontapp.com/'
  license :commercial

  depends_on :macos => '>= :yosemite'

  app 'RightFont.app'
end
