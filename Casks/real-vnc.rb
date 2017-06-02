cask 'real-vnc' do
  version '6.1.0'
  sha256 '7393d75a0425426e79599e44f045208dc3590e26395ec7436d218bdd0f03326a'

  url "https://www.realvnc.com/download/file/vnc.files/VNC-#{version}-MacOSX-x86_64.pkg"
  name 'Real VNC'
  homepage 'https://www.realvnc.com/'

  pkg "VNC-#{version}-MacOSX-x86_64.pkg"

  uninstall_preflight do
    system_command '/Applications/RealVNC/Uninstall VNC Server.app/Contents/Resources/uninstaller.sh', print_stderr: false, sudo: true
    system_command '/Applications/RealVNC/Uninstall VNC Viewer.app/Contents/Resources/uninstaller.sh', print_stderr: false, sudo: true
  end

  uninstall launchctl: [
                         'com.realvnc.vncserver',
                         'com.realvnc.vncserver.peruser',
                       ],
            pkgutil:   [
                         'com.realvnc.vncserver.pkg',
                         'com.realvnc.vncviewer.pkg',
                       ]

  zap delete: [
                '~/Library/Saved Application State/com.realvnc.vnclicensewiz.savedState',
                '~/Library/Saved Application State/com.realvnc.vncviewer.savedState',
                '~/Library/Saved Application State/com.realvnc.vncserver.savedState',
              ]
end
