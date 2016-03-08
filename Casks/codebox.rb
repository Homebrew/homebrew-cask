cask 'codebox' do
  version :latest
  sha256 :no_check

  url 'https://www.codebox.io/download/mac'
  name 'Codebox'
  homepage 'https://www.codebox.io'
  license :apache

  app 'Codebox.app'
end
