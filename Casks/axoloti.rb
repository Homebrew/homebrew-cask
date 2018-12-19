cask 'axoloti' do
  version '1.0.12-2'
  sha256 '7b0c1231d695dd0ff1d07f679713a1d5691a6fac3543b0aa0415356c5cc82a9c'

  # github.com/axoloti/axoloti was verified as official when first introduced to the cask
  url "https://github.com/axoloti/axoloti/releases/download/#{version}/axoloti-mac-#{version}.dmg"
  appcast 'https://github.com/axoloti/axoloti/releases.atom'
  name 'Axoloti Core'
  homepage 'http://www.axoloti.com/'

  depends_on cask: 'axoloti-runtime'

  app 'Axoloti.app'

  caveats do
    depends_on_java '8'

    <<~EOS
      If you ever decide to uninstall #{token}, it is likely its runtime will no longer be of use to you.
      If that’s the case, uninstall it with:

        brew cask uninstall axoloti-runtime
    EOS
  end
end
