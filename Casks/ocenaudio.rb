cask 'ocenaudio' do
  version '3.7.17'

  if MacOS.version <= :high_sierra
    sha256 'bdc0f5b50020ef6e09cb0ffa538f7d026a19660ea8e024b427381e6d7acc4419'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg'
  else
    sha256 '7b371a13d574637981189eb48e9bc4aec2472440572879509e6ac3581e09ce9f'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  end
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  depends_on macos: '>= :sierra'

  app 'ocenaudio.app'
end
