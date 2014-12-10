cask :v1 => 'renamer' do
  version :latest
  sha256 :no_check

  url 'http://creativebe.com/download/renamer'
  homepage 'http://renamer.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Renamer.app'
end
