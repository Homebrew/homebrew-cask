cask 'eclipse-ptp' do
  version '4.11.0,2019-03:R'
  sha256 'dae4fb9ed0ca62a9ffd520181b123f77bddf9a024eab45598563e4339e4bc7b0'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-parallel-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse for Parallel Application Developers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse PTP.app'
end
