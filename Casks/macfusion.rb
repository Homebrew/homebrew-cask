cask 'macfusion' do
  version '2.1-dev'
  sha256 'bc180bfe471fb41cbd5bf8d896dd38c0d4222436425970e090bcd36ad556e026'

  # github.com/ElDeveloper/macfusion2 was verified as official when first introduced to the cask
  url "https://github.com/ElDeveloper/macfusion2/releases/download/#{version}/Macfusion-#{version}.zip"
  appcast 'https://github.com/ElDeveloper/macfusion2/releases.atom',
          checkpoint: '66247c8e488caf39992d97b35481a7b24891eff9afb51a57b651dc68ff1190a8'
  name 'Macfusion'
  homepage 'http://macfusionapp.org/'
  license :apache

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
