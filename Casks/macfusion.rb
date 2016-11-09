cask 'macfusion' do
  version '2.1-dev'
  sha256 'bc180bfe471fb41cbd5bf8d896dd38c0d4222436425970e090bcd36ad556e026'

  # github.com/ElDeveloper/macfusion was verified as official when first introduced to the cask
  url "https://github.com/ElDeveloper/macfusion#{version.major}/releases/download/#{version}/Macfusion-#{version}.zip"
  appcast "https://github.com/ElDeveloper/macfusion#{version.major}/releases.atom",
          checkpoint: '1d723f056dc494253c55c5fa83f3f679ea9c4b421b2a97b806a70c08470aae08'
  name 'Macfusion'
  homepage 'http://macfusionapp.org/'

  depends_on cask: 'sshfs'

  app 'Macfusion.app'

  # fix broken bundled sshfs, see https://github.com/osxfuse/osxfuse/wiki/SSHFS#macfusion
  postflight do
    Dir.chdir("#{appdir}/Macfusion.app/Contents/PlugIns/sshfs.mfplugin/Contents/Resources") do
      File.rename('sshfs-static', 'sshfs-static.orig')
      File.symlink('/usr/local/bin/sshfs', 'sshfs-static')
    end
  end
end
