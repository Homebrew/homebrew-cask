cask 'munki' do
  version '3.1.1.3447'
  sha256 '5a888db4b2cb014bc63bf2ec7a29abb44e27fb63c3b014fe74a0ba05aee63a40'

  # github.com/munki/munki was verified as official when first introduced to the cask
  url "https://github.com/munki/munki/releases/download/v#{version.major_minor_patch}/munkitools-#{version}.pkg"
  appcast 'https://github.com/munki/munki/releases.atom',
          checkpoint: '1d2a6cb58fd43adad349714d8caf9f7ff108935f82333362521a934f2da56727'
  name 'Munki'
  homepage 'https://www.munki.org/munki/'

  pkg "munkitools-#{version}.pkg"

  uninstall pkgutil:   'com.googlecode.munki.*',
            launchctl: 'com.googlecode.munki.app_usage_monitor'
end
