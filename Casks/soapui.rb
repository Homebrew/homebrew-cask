cask :v1 => 'soapui' do
  version '5.2.1'
  sha256 '773cb3aaa269e14ed34f06d931b6898e6a8ad16d9d08d67cc4935e137bfbe37c'

  # smartbear.com is the official download host per the vendor homepage
  url "http://cdn01.downloads.smartbear.com/soapui/#{version}/SoapUI-#{version}.dmg"
  name 'SmartBear SoapUI'
  homepage 'http://www.soapui.org'
  license :oss

  # Run install4j from the distribution in CLI mode, choosing the options to:
  #   accept the license agreement
  #   install only SoapUI (not HermesJMS, the # tutorials, or source)
  #   install to /Applications
  #   don't create a desktop icon
  #   don't view the release notes
  #   don't launch SoapUI after installing.
  installer :script => "SoapUI #{version} Installer.app/Contents/MacOS/JavaApplicationStub",
            :args => %w[-c],
            :input => [
              'o', '', '', '', '', '', '', '', '', '', '', '1', '/Applications', '1', 'n', 'n', 'n'
            ]

  uninstall :delete => [
    "/Applications/SoapUI-#{version}.app"
  ]
end
