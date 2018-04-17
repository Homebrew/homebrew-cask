cask 'geekbench' do
  if MacOS.version <= :mavericks
    version '3.4.1'
    sha256 '9f2730472bba9fd39554290f465d37c32792debc5b20c9840efd1f79d40ca94c'

    # cdn.primatelabs.com was verified as official when first introduced to the cask
    url "https://cdn.primatelabs.com/Geekbench-#{version}-Mac.zip"
  else
    version '4.2.2'
    sha256 'e8c2d1daf75e2222a38d5b69192f271edad11d3a906f7b075309a3b581e39045'

    url "https://cdn.geekbench.com/Geekbench-#{version}-Mac.dmg"
    appcast "https://www.primatelabs.com/appcast/geekbench#{version.major}.xml",
            checkpoint: '2824d7858982b53cb201bd3dcba7046998675da05839856209aaad0785ff8db8'
  end

  name 'Geekbench'
  homepage 'https://www.geekbench.com/'

  app "Geekbench #{version.major}.app"
end
