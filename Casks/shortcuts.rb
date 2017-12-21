cask 'shortcuts' do
  version '1.0.1'
  sha256 '5494da4a8fb18471dd98aa5087820087463dc20e16ca6eb7c7ccde5e910f432c'

  url "https://github.com/siong1987/shortcuts/releases/download/#{version}/restart.sleep.shutdown.logout.lock.zip"
  appcast 'https://github.com/siong1987/shortcuts/releases.atom',
          checkpoint: '113785d21d85d90ee7fd589359c308251ddd934a302a20595ca0383589582ef3'
  name 'Restart/Sleep/Logout/Shutdown/Lock Shortcuts'
  homepage 'https://github.com/siong1987/shortcuts/'

  suite 'system', target: 'Shortcuts'
end
