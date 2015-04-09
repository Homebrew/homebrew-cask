cask :v1 => 'go2shell' do
  version :latest
  sha256 :no_check

  url 'http://zipzapmac.com/DMGs/Go2Shell.dmg'
  name 'Go2Shell'
  homepage 'http://zipzapmac.com/Go2Shell'
  license :gratis

  app 'Go2Shell.app'
end
