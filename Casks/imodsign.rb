cask :v1 => 'imodsign' do
  version :latest
  sha256 :no_check

  url 'https://imzdl.com/iModSign/iModSign.zip'
  name 'iModSign'
  appcast 'https://imzdl.com/iModSign/appcast.xml',
          :sha256 => 'f327ff36a097bc93fe7bca688cfee36bcf1e863427b456908113ee7b081fedf4'
  homepage 'https://imzdl.com'
  license :closed

  app 'iModSign.app'
end
