cask 'axoloti' do
  version '1.0.12-1'
  sha256 '21839f25fd323f092a9e7b4c103fc5c6e126d95bfcbdc54b2db2224639fee1b6'

  # github.com/axoloti/axoloti was verified as official when first introduced to the cask
  url "https://github.com/axoloti/axoloti/releases/download/#{version}/axoloti-mac-#{version}.dmg"
  appcast 'https://github.com/axoloti/axoloti/releases.atom',
          checkpoint: '7e8428f250a591ed812f1f6cba4e91727230eff0d3aaab07c455f7a4c0245677'
  name 'Axoloti Core'
  homepage 'http://www.axoloti.com/'

  depends_on cask: 'axoloti-runtime'

  app 'Axoloti.app'

  caveats do
    depends_on_java('8')

    <<-EOS.undent
      If you ever decide to uninstall #{token}, it is likely its runtime will no longer be of use to you.
      If that’s the case, uninstall it with:

        brew cask uninstall axoloti-runtime
    EOS
  end
end
