cask 'gephi' do
  version '0.9.0'
  sha256 '359301e7720f50bee26fa2df86044f9aa9b284c34bd5734f9434f4db4d55632f'

  # launchpadlibrarian.net is the official download host per the vendor homepage
  url "https://github.com/gephi/gephi/releases/download/v0.9.0/gephi-#{version}-macos.dmg"
  name 'Gephi'
  homepage 'https://gephi.github.io/'
  license :oss

  app 'Gephi.app'
end
