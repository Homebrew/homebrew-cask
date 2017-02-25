cask 'okapi' do
  version '0.32'
  sha256 '5d63f1ef997b05b4faa896a10a2d35ae4998648fada60230e65757a240c62c5c'

  # bintray.com/okapi was verified as official when first introduced to the cask
  url "http://dl.bintray.com/okapi/Distribution/okapi-apps_cocoa-macosx-x86_64_#{version}.dmg"
  name 'Okapi'
  homepage 'https://okapiframework.org/'

  suite "Okapi_#{version}"

  caveats do
    depends_on_java('8+')
  end
end
