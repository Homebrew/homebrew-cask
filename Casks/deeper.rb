cask :v1 => 'deeper' do
  version :latest
  sha256 :no_check

  if MacOS.version == :tiger
    url 'http://www.titanium.free.fr/download/104/Deeper.dmg'
  elsif MacOS.version == :leopard
    url 'http://www.titanium.free.fr/download/105/Deeper.dmg'
  elsif MacOS.version == :snow_leopard
    url 'http://www.titanium.free.fr/download/106/Deeper.dmg'
  elsif MacOS.version == :lion
    url 'http://www.titanium.free.fr/download/107/Deeper.dmg'
  elsif MacOS.version == :mountain_lion
    url 'http://www.titanium.free.fr/download/108/Deeper.dmg'
  elsif MacOS.version == :mavericks
    url 'http://www.titanium.free.fr/download/109/Deeper.dmg'
  else
    url 'http://www.titanium.free.fr/download/1010/Deeper.dmg'
  end

  homepage 'http://www.titanium.free.fr/downloaddeeper.php'
  license :unknown

  app 'Deeper.app'

  caveats do
    os_version_only('10.4', '10.5', '10.6', '10.7', '10.8', '10.9', '10.10')

    if [:leopard, :tiger].include? MacOS.version
      puts 'Deeper only runs from an Administrator account.'
    end
  end
end
