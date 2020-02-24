cask 'eclipse-ptp' do
  version '4.14.0,2019-12:R'
  sha256 '32c1977b80c9084917e43a1483adc4314ab6798dfd7c69f41359c4be1aee6735'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-parallel-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse for Parallel Application Developers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse PTP.app'
end
