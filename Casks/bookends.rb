cask :v1 => 'bookends' do
  version :latest
  sha256 :no_check

  url 'http://www.sonnysoftware.com/Bookends.dmg'
  homepage 'http://www.sonnysoftware.com'
  license :closed

  app 'Bookends.app'
end
