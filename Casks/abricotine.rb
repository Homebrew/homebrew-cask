cask 'abricotine' do
  version '0.4.0'
  sha256 '59c00ed450f75fc1cc0bc9fc36ac4e7a86088cf6b2eddc60863fd115486a11c7'

  # github.com/brrd/Abricotine was verified as official when first introduced to the cask
  url "https://github.com/brrd/Abricotine/releases/download/#{version}/Abricotine-osx-x64.zip"
  appcast 'https://github.com/brrd/Abricotine/releases.atom',
          checkpoint: 'b3422d90befd04546968b5063a92d50d91ce9fa390449c3e11d7e4537bc1c801'
  name 'abricotine'
  homepage 'https://abricotine.brrd.fr'

  app 'Abricotine-darwin-x64/Abricotine.app'
end
