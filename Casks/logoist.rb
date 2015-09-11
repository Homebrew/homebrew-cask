cask :v1 => 'logoist' do
  version :latest
  sha256 :no_check

  url 'http://www.syniumsoftware.com/download/logoist.dmg'
  name 'Logoist'
  homepage 'http://www.syniumsoftware.com/logoist/'
  license :commercial

  app 'Logoist.app'
end
