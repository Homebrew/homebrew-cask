cask 'eclipse-cpp' do
  version '4.7.3a,oxygen:3a'
  sha256 'e94fcad0c13132878380a399371f8aec6416f7559c127bf77b9ef0b2f96b8e34'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-cpp-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for C/C++ Developers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse CPP.app'
end
