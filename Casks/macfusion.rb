cask 'macfusion' do
  version '2.0.4'
  sha256 '6693241fd54d686013864adb86a6ea7eef6c1291546573b628b3ddf7889ef71c'

  url "http://macfusionapp.org/releases/Macfusion_#{version}.zip"
  appcast 'http://macfusionapp.org/appcast.xml',
          :sha256 => '1a1da2c914b81edda8939347be0a4628c22fd8ac598da75d130db6eb5be2570d'
  name 'Macfusion'
  homepage 'http://macfusionapp.org/'
  license :apache

  depends_on :cask => 'sshfs'

  app 'Macfusion.app'

  # fix broken bundled sshfs, see https://github.com/osxfuse/osxfuse/wiki/SSHFS#macfusion
  postflight do
    Dir.chdir("#{staged_path}/Macfusion.app/Contents/PlugIns/sshfs.mfplugin/Contents/Resources") do
      File.rename('sshfs-static', 'sshfs-static.orig')
      File.symlink('/usr/local/bin/sshfs', 'sshfs-static')
    end
  end
end
