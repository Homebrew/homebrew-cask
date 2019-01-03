cask 'eclipse-ptp' do
  version '4.9.0,2018-09:R'
  sha256 '6849576963fa51a3117012c330316985326c1c0ce224209881e26302c19c7882'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-parallel-#{version.after_comma.before_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse for Parallel Application Developers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse PTP.app'
end
