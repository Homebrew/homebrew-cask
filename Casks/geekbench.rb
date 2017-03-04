cask 'geekbench' do
  if MacOS.version <= :mavericks
    version '3.4.1'
    sha256 '9f2730472bba9fd39554290f465d37c32792debc5b20c9840efd1f79d40ca94c'

    # cdn.primatelabs.com was verified as official when first introduced to the cask
    url "https://cdn.primatelabs.com/Geekbench-#{version}-Mac.zip"
  else
    version '4.0.4'
    sha256 'eec5dd454cfe3c5d794975b9989361e7d7c52143c16533adec566f0886c15d72'

    # cdn.primatelabs.com was verified as official when first introduced to the cask
    url "https://cdn.primatelabs.com/Geekbench-#{version}-Mac.dmg"
    appcast "https://www.primatelabs.com/appcast/geekbench#{version.major}.xml",
            checkpoint: 'b0d857cef5ea534f88d51f8faea53f574ae8511945e614ac54146ddb52c6bf86'
  end

  name 'Geekbench'
  homepage 'http://www.geekbench.com/'

  app "Geekbench #{version.major}.app"
end
