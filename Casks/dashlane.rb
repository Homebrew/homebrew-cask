cask :v1 => 'dashlane' do
  version :latest
  sha256 :no_check

  url 'https://www.dashlane.com/directdownload?platform=mac'
  homepage 'https://www.dashlane.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Dashlane.app'
end
