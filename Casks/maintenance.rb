cask :v1 => 'maintenance' do
  version :latest
  sha256 :no_check

  if MacOS.version == :tiger
    url 'http://www.titanium.free.fr/download/104/Maintenance.dmg'
  elsif MacOS.version == :leopard
    url 'http://www.titanium.free.fr/download/105/Maintenance.dmg'
  elsif MacOS.version == :snow_leopard
    url 'http://www.titanium.free.fr/download/106/Maintenance.dmg'
  elsif MacOS.version == :lion
    url 'http://www.titanium.free.fr/download/107/Maintenance.dmg'
  elsif MacOS.version == :mountain_lion
    url 'http://joel.barriere.pagesperso-orange.fr/dl/108/Maintenance.dmg'
  else
    url 'http://joel.barriere.pagesperso-orange.fr/dl/109/Maintenance.dmg'
  end

  homepage 'http://www.titanium.free.fr/downloadmaintenance.php'
  license :closed

  app 'Maintenance.app'

  caveats do
    os_version_only('10.4', '10.5', '10.6', '10.7', '10.8', '10.9')

    if [:leopard, :tiger].include? MacOS.version
      puts 'Maintenance only runs from an Administrator account.'
    end
  end
end
