cask :v1 => 'safemonk' do
  version :latest
  sha256 :no_check

  url 'https://www.safemonk.com/downloads/osx'
  appcast 'https://www.safemonk.com:/data/client/osx/appcast.xml'
  homepage 'https://www.safemonk.com/'
  license :unknown

  app 'SafeMonk.app'
end
