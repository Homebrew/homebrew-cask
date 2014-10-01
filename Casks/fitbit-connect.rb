class FitbitConnect < Cask
  version '1.0.1.5104'
  sha256 'ffbb2d5501240313682780e0b98dc41844080260f707cd003c759b38ce9bc658'

  url "http://cache.fitbit.com/FitbitConnect/FitbitConnect_Mac_2014110_#{version}.dmg"
  homepage 'http://www.fitbit.com/'
  license :unknown

  pkg 'Install Fitbit Connect.pkg'
  uninstall :script => { :executable => 'Uninstall Fitbit Connect.app/Contents/Resources/uninstall.sh' },
            :pkgutil => 'com.fitbit.pkg.GalileoInstaller'
end
