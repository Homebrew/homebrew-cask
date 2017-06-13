cask 'ialaddin-noisytyper' do
  version '0.1'
  sha256 '6f15783df37d7a75c6387c720e18fd188f82eb75dc84bac8768824c188ae5927'

  url "https://github.com/iAladdin/NoisyTyper-Swift/archive/release/version-#{version}.zip"
  name 'Noisy Typer Swift'
  homepage 'https://github.com/iAladdin/NoisyTyper-Swift'

  app "NoisyTyper-Swift-release-version-#{version}/NoisyTyper.app"
end
