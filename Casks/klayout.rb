cask 'klayout' do
  version '0.23.2'
  sha256 '96ce3fdead710248ed2ed4f25c9a94859949466d42eaa4f87881c17567dc1f15'

  # 178.77.72.242 is the official download host per the vendor homepage
  url "http://178.77.72.242/downloads/klayout.#{version}.pkg"
  name 'KLayout'
  homepage 'http://www.klayout.de/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "klayout.#{version}.pkg"

  uninstall pkgutil: 'klayout.de',
            quit:    'klayout.de'
end
