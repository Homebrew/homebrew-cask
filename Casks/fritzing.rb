cask 'fritzing' do
  version '0.9.3b'
  sha256 'a057ed849b842540b98a68ab2cb996e22b482278706dd2f8da21d1bccf70513f'

  url "http://fritzing.org/download/#{version}/mac-os-x-105/Fritzing#{version}.dmg"
  appcast 'https://github.com/fritzing/fritzing-app/releases.atom',
          checkpoint: '25fb142407f7b457cb547f7d4b902e41f5903ba6826aa2c394d7273f5cdc4e3a'
  name 'Fritzing'
  homepage 'http://fritzing.org/home/'

  app 'Fritzing.app'

  caveats <<~EOS
    There's a known issue with Fritzing 0.9.3b, causing it to corrupt its own
    parts-library on first-launch. To avoid this, you must launch Fritzing
    *from the command-line* for the first time:

      $ /Applications/Fritzing.app/Contents/MacOS/Fritzing

    Once open, you'll need to explicitly update the parts-library:

      Help → Check for updates...

    Thereafter, at least until the next time you want to update the
    parts-library, you can safely launch it from the Finder.

    See: https://github.com/fritzing/fritzing-app/issues/3308 for more.
  EOS
end
