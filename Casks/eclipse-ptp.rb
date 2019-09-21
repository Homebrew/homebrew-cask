cask 'eclipse-ptp' do
  version '4.13.0,2019-09:R'
  sha256 '5ae481d48490a2180a825a0ab689ebb7bbddc9d51c9e9ad0fbb95498ac4a6d14'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-parallel-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse for Parallel Application Developers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse PTP.app'
end
