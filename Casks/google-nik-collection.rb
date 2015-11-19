cask :v1 => 'google-nik-collection' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/dl/edgedl/photos/nikcollection-demo.dmg'
  name 'Nik Collection'
  homepage 'https://www.google.com/nikcollection/'
  license :commercial
  tags :vendor => 'Google'

  installer :manual => 'Nik Collection.app'
end
