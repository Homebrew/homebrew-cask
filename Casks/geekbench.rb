cask 'geekbench' do
  if MacOS.version <= :mavericks
    version '3.4.1'
    sha256 '9f2730472bba9fd39554290f465d37c32792debc5b20c9840efd1f79d40ca94c'

    # cdn.primatelabs.com was verified as official when first introduced to the cask
    url "https://cdn.primatelabs.com/Geekbench-#{version}-Mac.zip"
  else
    version '4.1.3'
    sha256 '67ab3ffec52c521769296f817ee447364aac031cd902d7a36f03b71a97fa4d56'

    url "https://cdn.geekbench.com/Geekbench-#{version}-Mac.dmg"
    appcast "https://www.primatelabs.com/appcast/geekbench#{version.major}.xml",
            checkpoint: '69db0625fa1da8d36276999dac0f114802a99bb6c2ad36efebf44b944913cf8b'
  end

  name 'Geekbench'
  homepage 'https://www.geekbench.com/'

  app "Geekbench #{version.major}.app"
end
