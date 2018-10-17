cask 'm32-edit' do
  version '3.2'
  sha256 'e32a9334df17311ebf9e6fe3fcaaa624d2dd9fa7286e19d7c0e44ad0e9eaa967'

  # https://downloads.music-group.com/ was verified as official when first introduced to the cask
  url "https://downloads.music-group.com/software/behringer/M32/M32-Edit_MAC_#{version}.zip"
  name 'M32-edit'
  homepage 'http://www.musictribe.com/Categories/Midas/Mixers/Digital/M32/p/P0B3I'

  app 'M32-edit.app'
end
