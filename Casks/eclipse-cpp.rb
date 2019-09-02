cask 'eclipse-cpp' do
  version '4.12.0,2019-06:R'
  sha256 'f37d1a77ceb538f1a3a766b23b19e6e77814c008735b29b354f206ea20baa040'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-cpp-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for C/C++ Developers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse CPP.app'
end
