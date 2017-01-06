cask 'real-vnc' do
  version '6.0.1'
  sha256 '404d3b1ffe4b576736a1802d8f44270e26af390f1b6c379bfe95b0803de3e5d2'

  url "https://www.realvnc.com/download/file/vnc.files/VNC-#{version}-MacOSX-x86_64.pkg"
  name 'Real VNC'
  homepage 'https://www.realvnc.com/'

  pkg "VNC-#{version}-MacOSX-x86_64.pkg"

  uninstall script: {
                      executable: '/bin/sh',
                      args:       ['-c', '/Applications/RealVNC/Uninstall\ VNC\ Server.app/Contents/Resources/uninstaller.sh; /Applications/RealVNC/Uninstall\ VNC\ Viewer.app/Contents/Resources/uninstaller.sh'],
                    }

  caveats <<-EOS.undent
    Uninstall scripts throw error '/Applications/RealVNC/Advanced.localized: No such file or directory' but work correctly
  EOS
end
