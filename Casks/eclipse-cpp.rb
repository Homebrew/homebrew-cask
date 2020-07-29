cask 'eclipse-cpp' do
  version '4.16.0,2020-06:R'
  sha256 '524757ea2a2170a944ad098cce9c11eef092ee7686f6cea369fa00bd4bfeea22'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-cpp-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for C/C++ Developers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse CPP.app'
end
