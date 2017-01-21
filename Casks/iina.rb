cask 'iina' do
  version '0.0.3'
  sha256 '7f0ba198f4122f458a0d7b8873fef3fa5d683217eb09b18559c1a73bd6fa5837'

  # github.com/lhc70000/iina was verified as official when first introduced to the cask
  url "https://github.com/lhc70000/iina/releases/download/v#{version}/IINA.v#{version}.zip"
  appcast 'https://github.com/lhc70000/iina/releases.atom',
          checkpoint: '2e96b9eafe2cff0e8b802295435ef441389ab45a52fc1cf0838c127be01a4a0e'
  name 'IINA'
  homepage 'https://lhc70000.github.io/iina/'

  app 'IINA.app'
end
