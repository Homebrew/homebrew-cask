cask 'shiftit' do
  version '1.6.3'
  sha256 '3b01d74cc39e4efad64b2c9b135bea528730cb750c55a386bf74e1203b92ca68'

  url "https://github.com/fikovnik/ShiftIt/releases/download/version-#{version}/ShiftIt-#{version}.zip"
  appcast 'https://github.com/fikovnik/ShiftIt/releases.atom',
          checkpoint: '27768f3e0be91ae446110e3e478d895b543745f2c01f914cfb2b932f1070fba8'
  name 'ShiftIt'
  homepage 'https://github.com/fikovnik/ShiftIt'

  app 'ShiftIt.app'
end
