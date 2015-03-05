cask :v1 => 'renamer' do
  version :latest
  sha256 :no_check

  # creativebe.com is the official download host per the vendor homepage
  url 'http://creativebe.com/download/renamer'
  homepage 'http://renamer.com'
  license :commercial

  app 'Renamer.app'
end
