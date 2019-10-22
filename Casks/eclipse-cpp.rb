cask 'eclipse-cpp' do
  version '4.13.0,2019-09:R'
  sha256 '1da6f20a2b1b3592db44c7a03399c1c3751e012f92afdfa1419312868c984247'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-cpp-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for C/C++ Developers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse CPP.app'
end
