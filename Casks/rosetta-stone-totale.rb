cask 'rosetta-stone-totale' do
  version '4.5.5'
  sha256 '59dc1cdc4393a1cf91dc80e62376f6e9873f3fd80ed033b9f5fb2e6418a2f975'

  url "http://resources.rosettastone.com/rs/updates/application/#{version}/macintosh/Rosetta%20Stone%20TOTALe%20Update.dmg"
  name 'Rosetta Stone'
  homepage 'https://www.rosettastone.com/'

  pkg 'Rosetta Stone TOTALe.pkg', allow_untrusted: true

  uninstall pkgutil:   'com.rosettastoneltd.*',
            quit:      'com.rosettastone.rosettastonedaemon',
            launchctl: 'com.rosettastone.rosettastonedaemon'

  zap trash: [
               '/Library/Application Support/Rosetta Stone/',
               '/Library/Application Support/Rosetta Stone Backups/',
               '/Library/Application Support/RosettaStoneDaemon/',
             ]
end
