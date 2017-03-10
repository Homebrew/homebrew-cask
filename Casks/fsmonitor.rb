cask 'fsmonitor' do
  version '1.0.2,79'
  sha256 :no_check

  # tristan-software.ch/FSMonitor was verified as official when first introduced to the cask
  url "https://tristan-software.ch/FSMonitor/Archives/FSMonitor_#{version.after_comma}.zip"
  name 'fsmonitor'
  homepage 'http://fsmonitor.com'

  app 'FSMonitor.app'

  postflight do
    suppress_move_to_applications
  end
end
