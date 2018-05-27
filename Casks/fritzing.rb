cask 'fritzing' do
  version '0.9.3b'
  sha256 'a057ed849b842540b98a68ab2cb996e22b482278706dd2f8da21d1bccf70513f'

  url "http://fritzing.org/download/#{version}/mac-os-x-105/Fritzing#{version}.dmg"
  appcast 'https://github.com/fritzing/fritzing-app/releases.atom',
          checkpoint: '822adf0451f8360d88423cbc035b93cc781be7a2b174e5c38718ab1a9c1854cf'
  name 'Fritzing'
  homepage 'http://fritzing.org/home/'

  app 'Fritzing.app'

  caveats <<~EOS
    There's a known issue with Fritzing 0.9.3b, causing it to corrupt its own
    parts-library on first-launch. To avoid this, you must launch Fritzing
    *from the command-line* for the first time:

      $ #{appdir}/Fritzing.app/Contents/MacOS/Fritzing

    Once open, you'll need to explicitly update the parts-library:

      Help → Check for updates...

    Thereafter, at least until the next time you want to update the
    parts-library, you can safely launch it from the Finder.

    See: https://github.com/fritzing/fritzing-app/issues/3308 for more.
  EOS
end
