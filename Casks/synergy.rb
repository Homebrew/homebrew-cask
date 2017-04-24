cask 'synergy' do
  version '1.8.8,c30301e'
  sha256 '9f9019b3c558bf0c05e558828ed282b29c316d9477c5f5169d3461e32dadb9b6'

  url "https://binaries.symless.com/v#{version.before_comma}/synergy-v#{version.before_comma}-stable-#{version.after_comma}-MacOSX-x86_64.dmg"
  appcast 'https://github.com/symless/synergy/releases.atom',
          checkpoint: '7805c24e0b75550d5803bef652d74804d796976096a7682821d166f938165a08'
  name 'Synergy'
  homepage 'https://symless.com/synergy'

  app 'Synergy.app'
end
