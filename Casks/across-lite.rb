cask 'across-lite' do
  version '2.4.1'
  sha256 '741846e147ebe818dc182307e1359e6880b9bbccc7b46d6af988f2d82746c80f'

  url "http://www.litsoft.com/across/alite/download/download.php/al#{version.no_dots}osx.dmg?os=macosx"
  name 'Across Lite'
  homepage 'http://www.litsoft.com/across/alite/download/'

  app 'Across Lite.app'
end
