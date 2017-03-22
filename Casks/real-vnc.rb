cask 'real-vnc' do
  version '6.0.2'
  sha256 'fad0e8ea750399b6af627a9a4f31321bf7e6c4551c8ca9ed9ecbec1e5fa0b012'

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
