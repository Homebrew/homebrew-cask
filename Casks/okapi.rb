cask 'okapi' do
  version '0.36'
  sha256 '268d64f445998ba9f8e53493fc1a7f5cfdcf40fb331777a80e6f2f20d65f2723'

  # bintray.com/okapi was verified as official when first introduced to the cask
  url "https://dl.bintray.com/okapi/Distribution/okapi-apps_cocoa-macosx-x86_64_#{version}.dmg"
  name 'Okapi'
  homepage 'https://okapiframework.org/'

  suite "Okapi_#{version}"

  caveats do
    depends_on_java '8+'
  end
end
