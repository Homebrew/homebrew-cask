cask 'real-vnc' do
  version '5.3.2'
  sha256 'ed075ad1bec0d3d6ae9c446fbdec211798853d79f14c7a98520819f22fe991d3'

  url "https://www.realvnc.com/download/file/vnc.files/VNC-#{version}-MacOSX-x86_64.pkg"
  name 'Real VNC'
  homepage 'https://www.realvnc.com'

  pkg "VNC-#{version}-MacOSX-x86_64.pkg"

  uninstall script: '/Applications/RealVNC/Advanced.localized/Uninstall VNC Viewer.app/Contents/Resources/uninstaller.sh'
end
