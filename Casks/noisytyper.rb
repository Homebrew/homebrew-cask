cask 'noisytyper' do
  version '0.0.1'
  sha256 'a01bba44d1ca3afd9f4fbe97f38e061a2edb67ab20d3d05ba3887663e0e851bf'

  # theo.tw was verified as official when first introduced to the cask
  url "http://theo.tw/noisy/NoisyTyper-v#{version.no_dots}.zip"
  name 'Noisy Typer'
  homepage 'http://fffff.at/noisy-typer-a-typewriter-for-your-laptop/'

  app "NoisyTyper-v#{version.no_dots}/NoisyTyper.app"
end
