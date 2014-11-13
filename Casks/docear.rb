cask :v1 => 'docear' do
  version :latest
  sha256 :no_check

  url 'http://docear.org/download/docear.dmg'
  homepage 'http://docear.org'
  license :unknown

  app 'Docear.app'
end
