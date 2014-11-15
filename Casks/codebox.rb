cask :v1 => 'codebox' do
  version :latest
  sha256 :no_check

  url 'https://www.codebox.io/download/mac'
  homepage 'https://www.codebox.io'
  license :unknown

  app 'Codebox.app'
end
