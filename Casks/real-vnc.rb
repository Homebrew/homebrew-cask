cask :v1 => 'real-vnc' do
  version '5.2.3'
  sha256 '1e59895d261b8903e8cdc9e0419804289e62ac7834fd8efb62d678559198bd8e'

  url 'https://www.realvnc.com/download/binary/1713/'
  name 'Real VNC'
  homepage 'https://www.realvnc.com'
  license :freemium

  container :type => :naked
  preflight do
    system '/bin/mv', '--', staged_path.join('1713'), staged_path.join("VNC-#{version}-MacOSX.pkg")
  end

  pkg "VNC-#{version}-MacOSX.pkg"

  uninstall :early_script => '/Applications/RealVNC/Advanced.localized/Uninstall VNC Server.app/Contents/Resources/uninstaller.sh',
    :script => '/Applications/RealVNC/Advanced.localized/Uninstall VNC Viewer.app/Contents/Resources/uninstaller.sh'
end
