cask 'real-vnc' do
  version '6.0.1'
  sha256 '404d3b1ffe4b576736a1802d8f44270e26af390f1b6c379bfe95b0803de3e5d2'

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
