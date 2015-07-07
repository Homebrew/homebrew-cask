cask :v1 => 'geany' do
  version '1.25'
  sha256 '1c435412d754d6e64e773c9066bae4534c481aea79ffc5a2ab6a7b723183870a'

  url "http://download.geany.org/snapshots/geany-#{version}nightly_osx.dmg"
  name 'Geany'
  homepage 'http://www.geany.org'
  license :gpl

  app 'Geany.app'

  depends_on :macos => '>= :lion'
end
