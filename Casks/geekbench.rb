cask 'geekbench' do
  if MacOS.version <= :mavericks
    version '3.4.1'
    sha256 '9f2730472bba9fd39554290f465d37c32792debc5b20c9840efd1f79d40ca94c'

    # cdn.primatelabs.com was verified as official when first introduced to the cask
    url "https://cdn.primatelabs.com/Geekbench-#{version}-Mac.zip"
  else
    version '4.1.1'
    sha256 'a0051df2d9df184d08805f88af99cdba6473008e7f9cfaee53a3dc68d9e76170'

    # cdn.primatelabs.com was verified as official when first introduced to the cask
    url "https://cdn.primatelabs.com/Geekbench-#{version}-Mac.dmg"
    appcast "https://www.primatelabs.com/appcast/geekbench#{version.major}.xml",
            checkpoint: '4b9153b8802d9f29cc3c2117512d98620918011994c5a131f28f795917732d5d'
  end

  name 'Geekbench'
  homepage 'http://www.geekbench.com/'

  app "Geekbench #{version.major}.app"
end
