cask 'okapi' do
  version '0.35'
  sha256 '94033a291df167172271aab8004974dfd84feb2c9023c0213056c0fe58124250'

  # bintray.com/okapi was verified as official when first introduced to the cask
  url "http://dl.bintray.com/okapi/Distribution/okapi-apps_cocoa-macosx-x86_64_#{version}.dmg"
  name 'Okapi'
  homepage 'https://okapiframework.org/'

  suite "Okapi_#{version}"

  caveats do
    depends_on_java '8+'
  end
end
