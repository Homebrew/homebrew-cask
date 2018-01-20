cask 'shiftit' do
  version '1.6.4'
  sha256 '20db9e67f70b77bf1be325b0fb6705ac469c79595348da83e5ae180fe3193773'

  url "https://github.com/fikovnik/ShiftIt/releases/download/version-#{version}/ShiftIt-#{version}.zip"
  appcast 'https://github.com/fikovnik/ShiftIt/releases.atom',
          checkpoint: '643bc93d3db52d965d0cc9022f12b8194db46b99eb04530b618f3620a4ab9107'
  name 'ShiftIt'
  homepage 'https://github.com/fikovnik/ShiftIt/'

  app 'ShiftIt.app'
end
