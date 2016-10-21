cask 'nerdtool' do
  version '0.8.1'
  sha256 'f1329b70b3eb7d0b58389cd6f9e12232a1ebf01815157bbf3870dcdda1c5002a'

  # cloud.github.com/downloads/balthamos/geektool-3 was verified as official when first introduced to the cask
  url "http://cloud.github.com/downloads/balthamos/geektool-3/nerdtool-#{version}.zip"
  appcast 'https://github.com/balthamos/geektool-3/releases.atom',
          checkpoint: 'f5e8427431f93a5acf5d5616ab479aa6de5ed88e19476b179869fe12914fcc91'
  name 'Nerdtool'
  homepage 'http://mutablecode.com/apps/nerdtool.html'

  app "nerdtool-#{version}/NerdTool.app"
end
