cask 'eldeveloper-macfusion' do
  version '2.1.1-dev.3'
  sha256 '3e6e356f36623dde805aa3de941e29f6256b02cfe0720bcbd70df4526e2a7198'

  url "https://github.com/ElDeveloper/macfusion#{version.major}/releases/download/#{version}/Macfusion.zip"
  appcast "https://github.com/ElDeveloper/macfusion#{version.major}/releases.atom",
          checkpoint: '4f19fdf3855e04e508dec355554487deaba49414556e6f93bc947d054703808b'
  name 'Macfusion'
  homepage "https://github.com/ElDeveloper/macfusion#{version.major}/"

  depends_on formula: 'sshfs'

  app 'Macfusion.app'

  # fix broken bundled sshfs, see https://github.com/osxfuse/osxfuse/wiki/SSHFS#macfusion
  postflight do
    Dir.chdir("#{appdir}/Macfusion.app/Contents/PlugIns/sshfs.mfplugin/Contents/Resources") do
      File.rename('sshfs-static', 'sshfs-static.orig')
      File.symlink("#{HOMEBREW_PREFIX}/bin/sshfs", 'sshfs-static')
    end
  end
end
