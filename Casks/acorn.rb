cask :v1 => 'acorn' do
  version :latest
  sha256 :no_check

  url 'http://flyingmeat.com/download/Acorn.zip'
  homepage 'http://flyingmeat.com/acorn/'
  license :commercial

  app 'Acorn.app'
end
