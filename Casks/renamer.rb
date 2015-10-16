cask :v1 => 'renamer' do
  version :latest
  sha256 :no_check

  # creativebe.com is the official download host per the vendor homepage
  url 'http://creativebe.com/download/renamer'
  appcast 'https://storage.googleapis.com/incrediblebee/appcasts/renamer.xml',
          :sha256 => '506ee0b9ad77b83e57cc14bae5325ff495774defb0cef740b3d69105e7a095f1'
  name 'Renamer'
  homepage 'http://renamer.com'
  license :commercial

  app 'Renamer.app'
end
