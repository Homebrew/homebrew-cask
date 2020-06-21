cask 'subsync' do
  version '0.15.0'
  sha256 '0e6f54806e30db861acc88592de474e026fa54e8b1d636e52be5fa2a5e941c0d'

  # github.com/sc0ty/subsync was verified as official when first introduced to the cask
  url "https://github.com/sc0ty/subsync/releases/download/#{version.major_minor}/subsync-#{version}-mac-x86_64.dmg"
  appcast 'https://github.com/sc0ty/subsync/releases.atom'
  name 'subsync'
  homepage 'https://subsync.online/'

  app 'subsync.app'
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/subsync.wrapper.sh"
  binary shimscript, target: 'subsync'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/subsync.app/Contents/MacOS/subsync' --cli "$@"
    EOS
  end

  zap trash: [
               '~/Library/Preferences/subsync/subsync.json',
               '~/Library/Preferences/subsync/assets/',
             ]
end
