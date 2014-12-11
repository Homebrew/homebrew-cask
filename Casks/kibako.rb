cask :v1 => 'kibako' do
  version :latest
  sha256 :no_check

  url 'https://updates.kibakoapp.com/download/latest'
  homepage 'https://www.kibakoapp.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Kibako.app'
end
