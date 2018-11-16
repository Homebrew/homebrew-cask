cask 'geekbench' do
  if MacOS.version <= :mavericks
    version '3.4.1'
    sha256 '9f2730472bba9fd39554290f465d37c32792debc5b20c9840efd1f79d40ca94c'

    # cdn.primatelabs.com was verified as official when first introduced to the cask
    url "https://cdn.primatelabs.com/Geekbench-#{version}-Mac.zip"
  else
    version '4.3.1'
    sha256 '3f1a645dd9eeb49328a77d42651cd2b214ea67e670912d53ea49ef6a4ad9766b'

    url "https://cdn.geekbench.com/Geekbench-#{version}-Mac.zip"
    appcast "https://www.primatelabs.com/appcast/geekbench#{version.major}.xml"
  end

  name 'Geekbench'
  homepage 'https://www.geekbench.com/'

  app "Geekbench #{version.major}.app"
end
