cask 'eldeveloper-macfusion' do
  version '2.1.1-dev.3'
  sha256 '3e6e356f36623dde805aa3de941e29f6256b02cfe0720bcbd70df4526e2a7198'

  url "https://github.com/ElDeveloper/macfusion#{version.major}/releases/download/#{version}/Macfusion.zip"
  appcast "https://github.com/ElDeveloper/macfusion#{version.major}/releases.atom",
          checkpoint: '7f4ed144badd1a5762911adbd1430169f1ba9e727d95ddaa9fbbee6027b7317e'
  name 'Macfusion'
  homepage "https://github.com/ElDeveloper/macfusion#{version.major}/"

  depends_on formula: 'homebrew/fuse/sshfs'

  app 'Macfusion.app'

  # fix broken bundled sshfs, see https://github.com/osxfuse/osxfuse/wiki/SSHFS#macfusion
  postflight do
    Dir.chdir("#{appdir}/Macfusion.app/Contents/PlugIns/sshfs.mfplugin/Contents/Resources") do
      File.rename('sshfs-static', 'sshfs-static.orig')
      File.symlink("#{HOMEBREW_PREFIX}/bin/sshfs", 'sshfs-static')
    end
  end
end
