cask :v1 => 'fuze' do
  version :latest
  sha256 :no_check

  url 'https://www.fuzemeeting.com/downloads/fuze/Fuze.dmg'
  homepage 'https://www.fuzemeeting.com'
  license :commercial

  app 'Fuze.app'
end
