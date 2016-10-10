cask 'dynamite' do
  version '3.2.2'
  sha256 'e1ac339c37844bcbe82f9cc1718aa7cd7c7232d36761dbf3a0a84d500899a06c'

  url "https://mediaatelier.com/DynaMite3/DynaMite_#{version}.zip"
  name 'DynaMite'
  homepage 'https://www.mediaatelier.com/DynaMite3/'

  depends_on macos: '>= :mavericks'

  app 'DynaMite.app'
end
