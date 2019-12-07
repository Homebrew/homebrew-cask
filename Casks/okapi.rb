cask 'okapi' do
  version '0.37'
  sha256 '219ddbe1b28dd15ddb58be7860baf98fa5cb92fd74fa920ab4048ba3e3e07724'

  # bintray.com/okapi was verified as official when first introduced to the cask
  url "https://dl.bintray.com/okapi/Distribution/okapi-apps_cocoa-macosx-x86_64_#{version}.dmg"
  name 'Okapi'
  homepage 'https://okapiframework.org/'

  suite "Okapi_#{version}"

  caveats do
    depends_on_java '8+'
  end
end
