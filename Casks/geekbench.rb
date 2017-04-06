cask 'geekbench' do
  if MacOS.version <= :mavericks
    version '3.4.1'
    sha256 '9f2730472bba9fd39554290f465d37c32792debc5b20c9840efd1f79d40ca94c'

    # cdn.primatelabs.com was verified as official when first introduced to the cask
    url "https://cdn.primatelabs.com/Geekbench-#{version}-Mac.zip"
  else
    version '4.1.0'
    sha256 '66ccd91e95bf825de551ba19954c57448c550dd9a37779c08bda7ce5b38657f9'

    # cdn.primatelabs.com was verified as official when first introduced to the cask
    url "https://cdn.primatelabs.com/Geekbench-#{version}-Mac.dmg"
    appcast "https://www.primatelabs.com/appcast/geekbench#{version.major}.xml",
            checkpoint: 'bd46ef81977d4cb677c1f768f2bc204f4a20a7fd4edfde7a9e7a8a3dc9472f6d'
  end

  name 'Geekbench'
  homepage 'http://www.geekbench.com/'

  app "Geekbench #{version.major}.app"
end
