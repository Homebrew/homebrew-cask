cask 'manictime' do
  version '1.3.3'
  sha256 '87e0d7077974e9d1fb4c2a5ea1de397ba296cc634a92b0c1146263f2dfc65edc'

  url "http://cdn.manictime.com/setup/mac/ManicTime-v#{version}.dmg"
  name 'ManicTime'
  homepage 'http://www.manictime.com/Mac'

  pkg "ManicTime-#{version}.pkg"

  uninstall pkgutil: 'com.finkit.manictime.tracker'
  
  caveats "This is not a full ManicTime Windows port to Mac. "\
          "It is only a tracker, and  requires ManicTime Server v3.2 or later"\
          "installed on a Windows machine to receive and display the reports."\
end
