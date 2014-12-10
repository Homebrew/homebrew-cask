cask :v1 => 'codebox' do
  version :latest
  sha256 :no_check

  url 'https://www.codebox.io/download/mac'
  homepage 'https://www.codebox.io'
  license :unknown    # todo: improve this machine-generated value

  app 'Codebox.app'
end
