cask :v1 => 'boom' do
  version :latest
  sha256 :no_check

  url 'http://www.globaldelight.com/boom/download/1.1x/boom.dmg'
  homepage 'http://www.globaldelight.com/boom/'
  license :commercial

  app 'Boom.app'
end
