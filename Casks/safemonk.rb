cask :v1 => 'safemonk' do
  version :latest
  sha256 :no_check

  url 'https://www.safemonk.com/downloads/osx'
  appcast 'https://www.safemonk.com:/data/client/osx/appcast.xml'
  name 'SafeMonk'
  homepage 'https://www.safemonk.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SafeMonk.app'
end
