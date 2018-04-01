cask 'dynamite' do
  version '3.2.6'
  sha256 '8aceec8920ba0ca0fe143b646aa42539640eee941050f0b01ce0e89772e66bd6'

  url "https://mediaatelier.com/DynaMite3/DynaMite_#{version}.zip"
  appcast 'https://mediaatelier.com/DynaMite3/feed.xml',
          checkpoint: 'b204b7b36cf64ce83d1d23034e458da365c256f10e87721994501ffd9901ea0b'
  name 'DynaMite'
  homepage 'https://www.mediaatelier.com/DynaMite3/'

  depends_on macos: '>= :mavericks'

  app 'DynaMite.app'
end
