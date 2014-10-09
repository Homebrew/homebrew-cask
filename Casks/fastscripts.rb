class Fastscripts < Cask
  version '2.6.7'
  sha256 '2bbd44582216f7c9961dbd5e6bc9bc78023da20d1dab4a5c499ea5883d9dd968'

  url "https://www.red-sweater.com/fastscripts/FastScripts#{version}.zip"
  appcast 'http://www.red-sweater.com/fastscripts/appcast2.php'
  homepage 'http://www.red-sweater.com/fastscripts/'
  license :unknown

  app 'FastScripts.app'
end
