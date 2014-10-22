class Smcfancontrol < Cask
  version '2.5'
  sha256 'debd9c1af238cdf11dd83ee686545377a7dbd7105bf343e0833a377f361a992c'

  url "http://www.eidac.de/smcfancontrol/smcfancontrol_#{version.gsub('.', '_')}.zip"
  appcast 'http://www.eidac.de/smcfancontrol/smcfancontrol.xml',
          :sha256 => 'f6d65198ddd399e25105218d149b3cca84858ea3815d04e273dbefe7f2fdf0e8'
  homepage 'http://www.eidac.de/?cat=40'
  license :gpl

  app 'smcFanControl.app'
end
