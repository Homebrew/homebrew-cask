cask :v1 => 'shiftit' do
  version '1.6.2'
  sha256 '1fda1050f529707a3471c301587271a8ae65f90825d3b9fc6b939b14a6157bf7'

  url 'https://github.com/fikovnik/ShiftIt/releases/download/version-#{version}/ShiftIt-#{version}.zip'
  url 'https://github.com/fikovnik/ShiftIt/releases.atom'
  name 'ShiftIt'
  appcast 'https://raw.github.com/fikovnik/ShiftIt/master/release/appcast.xml',
          :sha256 => 'c9434230d6142af0c429716af2a7628528a5d5721983238592556fd1f5d56aff'
  homepage 'https://github.com/fikovnik/ShiftIt'
  license :gpl

  app 'ShiftIt.app'
end
