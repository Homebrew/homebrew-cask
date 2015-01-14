cask :v1 => 'codebox' do
  version :latest
  sha256 :no_check

  url 'https://www.codebox.io/download/mac'
  homepage 'https://www.codebox.io'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Codebox.app'
end
