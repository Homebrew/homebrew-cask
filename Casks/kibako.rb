cask :v1 => 'kibako' do
  version :latest
  sha256 :no_check

  url 'https://updates.kibakoapp.com/download/latest'
  homepage 'https://www.kibakoapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Kibako.app'
end
