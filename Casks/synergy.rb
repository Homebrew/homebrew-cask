cask 'synergy' do
  version '1.8.8,25a8cb2'
  sha256 'b09d8ffdb47ecde761e06e9beea672ad4b6999e09104fa9239ae30ae0f69b9c2'

  url "https://binaries.symless.com/v#{version.before_comma}/synergy-v#{version.before_comma}-stable-#{version.after_comma}-MacOSX-x86_64.dmg"
  appcast 'https://github.com/symless/synergy/releases.atom',
          checkpoint: '7805c24e0b75550d5803bef652d74804d796976096a7682821d166f938165a08'
  name 'Synergy'
  homepage 'https://symless.com/synergy'

  app 'Synergy.app'
end
