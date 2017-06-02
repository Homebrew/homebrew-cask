cask 'shiftit' do
  version '1.6.3'
  sha256 '3b01d74cc39e4efad64b2c9b135bea528730cb750c55a386bf74e1203b92ca68'

  url "https://github.com/fikovnik/ShiftIt/releases/download/version-#{version}/ShiftIt-#{version}.zip"
  appcast 'https://github.com/fikovnik/ShiftIt/releases.atom',
          checkpoint: 'ce84bfdc0d373f8fc0eb8a97f23934ca2cf7e7d075bc5b4ff07bc2d68d7ad947'
  name 'ShiftIt'
  homepage 'https://github.com/fikovnik/ShiftIt/'

  app 'ShiftIt.app'
end
