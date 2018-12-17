cask 'geekbench' do
  if MacOS.version <= :mavericks
    version '3.4.1'
    sha256 '9f2730472bba9fd39554290f465d37c32792debc5b20c9840efd1f79d40ca94c'

    # cdn.primatelabs.com was verified as official when first introduced to the cask
    url "https://cdn.primatelabs.com/Geekbench-#{version}-Mac.zip"
  else
    version '4.3.2'
    sha256 '4f995a7e9f6059195ec4e585bc6e1c450e35ace0b72ca6978c446ced75dae534'

    url "https://cdn.geekbench.com/Geekbench-#{version}-Mac.zip"
    appcast "https://www.primatelabs.com/appcast/geekbench#{version.major}.xml"
  end

  name 'Geekbench'
  homepage 'https://www.geekbench.com/'

  app "Geekbench #{version.major}.app"
end
