cask 'axoloti' do
  version '1.0.12-1'
  sha256 '21839f25fd323f092a9e7b4c103fc5c6e126d95bfcbdc54b2db2224639fee1b6'

  # github.com/axoloti/axoloti was verified as official when first introduced to the cask
  url "https://github.com/axoloti/axoloti/releases/download/#{version}/axoloti-mac-#{version}.dmg"
  appcast 'https://github.com/axoloti/axoloti/releases.atom',
          checkpoint: '613310bd8871468b0f4446a6ef121c96131bc42434a1e1765112fefc5db3b27d'
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
