cask 'eclipse-cpp' do
  version '4.11.0,2019-03:R'
  sha256 'ca95ee6c442b0d43e9fa03374a869b335ba1f14c113f7b08e59bde66f7700c5b'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-cpp-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for C/C++ Developers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse CPP.app'
end
