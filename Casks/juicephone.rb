cask :v1 => 'juicephone' do
  version :latest
  sha256 :no_check

  url 'http://download.addpod.com/juicephone'
  name 'JuicePhone'
  homepage 'http://addpod.com/juicephone'
  license :gratis

  app 'JuicePhone.app'
end
