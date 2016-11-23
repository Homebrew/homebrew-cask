cask 'geekbench' do
  if MacOS.version <= :mavericks
    version '3.4.1'
    sha256 '9f2730472bba9fd39554290f465d37c32792debc5b20c9840efd1f79d40ca94c'

    # cdn.primatelabs.com was verified as official when first introduced to the cask
    url "https://cdn.primatelabs.com/Geekbench-#{version}-Mac.zip"
  else
    version '4.0.3'
    sha256 'b021df7f55056e4d2395a7a835e75500bd3c2e1c59164f78598c9bbf170facc1'

    # cdn.primatelabs.com was verified as official when first introduced to the cask
    url "https://cdn.primatelabs.com/Geekbench-#{version}-Mac.dmg"
    appcast "https://www.primatelabs.com/appcast/geekbench#{version.major}.xml",
            checkpoint: '6ac06a59029bb1a909131d60a87ad58666420e8c8ee38264f2dcf06e69dbf1ef'
  end

  name 'Geekbench'
  homepage 'http://www.geekbench.com/'

  app "Geekbench #{version.major}.app"
end
