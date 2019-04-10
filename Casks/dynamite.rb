cask 'dynamite' do
  version '3.2.7'
  sha256 '36a119ae316cf3bad8e3f9f211a1e76502c253b26eb2390e16d626990986ae53'

  url "https://mediaatelier.com/DynaMite3/DynaMite_#{version}.zip"
  appcast 'https://mediaatelier.com/DynaMite3/feed.xml'
  name 'DynaMite'
  homepage 'https://www.mediaatelier.com/DynaMite3/'

  app 'DynaMite.app'
end
