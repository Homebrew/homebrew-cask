class Soapui < Cask
  url 'http://downloads.sourceforge.net/project/soapui/soapui/5.0.0/SoapUI-5.0.0.dmg'
  homepage 'http://www.soapui.org/'
  version '5.0.0'
  sha256 'fdd132fe454f28039894aa13150140fcff2f1be6241d3398fa9a14d73e76a4c2'
  caskroom_only true

  after_install do
    system '/usr/bin/sudo', '-E', '--',
      "#{destination_path}/SoapUI #{version} Installer.app/Contents/MacOS/JavaApplicationStub","-q"
  end

  uninstall :files => [
    '/Applications/SoapUI-#{version}',
    "#{ENV['HOME']}/Desktop/SoapUI-#{version}"
  ]

end
