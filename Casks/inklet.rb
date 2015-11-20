cask :v1 => 'inklet' do
  version :latest
  sha256 :no_check

  url 'https://tenonedesign.com/apps/inklet/inklet.php'
  name 'Inklet'
  homepage 'https://tenonedesign.com/inklet.php'
  license :commercial

  app 'Inklet.app'
end
