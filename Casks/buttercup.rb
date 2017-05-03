cask 'buttercup' do
  version '0.13.0'
  sha256 '3785bd76b70029211525ad97039fc1f46d7c55b265602691c975f10a16aeb8b4'

  # github.com/buttercup/buttercup was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup/releases/download/v#{version}-alpha/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup/releases.atom',
          checkpoint: '20dad1973c4adac03a57456b21cbaaeeb4e1f8493d4529a132ff04b69e5ce3b7'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
