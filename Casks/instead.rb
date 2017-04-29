cask 'instead' do
  version '3.0.0'
  sha256 '6208f42a252efe875a74371e59f511e602c219674e57a18881e5e40bb940a6ce'

  # sourceforge.net/instead was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/instead/instead/#{version}/Instead-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/instead/rss?path=/instead',
          checkpoint: 'bd545932d3e4426cb0b5bc69fb762694a5c6382a340f32994ebf498940ad84b2'
  name 'INSTEAD'
  homepage 'https://instead.syscall.ru/index.html'

  app 'Instead.app'
end
