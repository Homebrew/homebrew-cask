cask 'firefoxnightly' do
  version '47.0a1'
  sha256 'c008da4b36083684748a5f8dda39cfcf0997f6f2b154b32f97a867032c9d503f'

  url "https://archive.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-#{version}.en-US.mac.dmg"
  name 'Mozilla Firefox Nightly'
  homepage 'https://nightly.mozilla.org'
  license :mpl

  app 'FirefoxNightly.app'
end
