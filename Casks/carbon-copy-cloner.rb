class CarbonCopyCloner < Cask
  version '3.5.7'
  sha256 '0b689c610b377f839bcf27239c5ff17824586e44808d5f6317084b1bd5220ddc'

  url "http://bombich.com/software/files/ccc-#{version}.zip"
  appcast 'http://www.bombich.com/software/updates/ccc.php'
  homepage 'http://bombich.com/'

  app 'Carbon Copy Cloner.app'
end
