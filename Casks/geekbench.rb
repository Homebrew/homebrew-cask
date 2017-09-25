cask 'geekbench' do
  if MacOS.version <= :mavericks
    version '3.4.1'
    sha256 '9f2730472bba9fd39554290f465d37c32792debc5b20c9840efd1f79d40ca94c'

    # cdn.primatelabs.com was verified as official when first introduced to the cask
    url "https://cdn.primatelabs.com/Geekbench-#{version}-Mac.zip"
  else
    version '4.1.2'
    sha256 '7c1809bc29b969b79e5b9c27d5c0c05695afecfcd253ff3dce4a980bb267a090'

    url "https://cdn.geekbench.com/Geekbench-#{version}-Mac.dmg"
    appcast "https://www.primatelabs.com/appcast/geekbench#{version.major}.xml",
            checkpoint: '3de5fc8d4535bf34ac50db0fb5f95825e542af87668fc994914c102d330aff12'
  end

  name 'Geekbench'
  homepage 'https://www.geekbench.com/'

  app "Geekbench #{version.major}.app"
end
