cask 'real-vnc' do
  version '5.3.0'
  sha256 '940d1871e587e9135f957ab879ac5fc479721e47b4d8122152e5d2e92c30e231'

  url 'https://www.realvnc.com/download/binary/1775/'
  name 'Real VNC'
  homepage 'https://www.realvnc.com'
  license :freemium

  container :type => :naked
  preflight do
    system '/bin/mv', '--', staged_path.join('1775'), staged_path.join("VNC-#{version}-MacOSX.pkg")
  end

  pkg "VNC-#{version}-MacOSX.pkg"

  uninstall :early_script => '/Applications/RealVNC/Advanced.localized/Uninstall VNC Server.app/Contents/Resources/uninstaller.sh',
    :script => '/Applications/RealVNC/Advanced.localized/Uninstall VNC Viewer.app/Contents/Resources/uninstaller.sh'
end
