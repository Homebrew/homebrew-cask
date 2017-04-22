cask 'dynamite' do
  version '3.2.4'
  sha256 'de0d67eba6affd46ac8a5fe1d0d6dd741860d791730b6c53891fafc6c8ac6d97'

  url "https://mediaatelier.com/DynaMite3/DynaMite_#{version}.zip"
  name 'DynaMite'
  homepage 'https://www.mediaatelier.com/DynaMite3/'

  depends_on macos: '>= :mavericks'

  app 'DynaMite.app'
end
