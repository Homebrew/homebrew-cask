cask 'inkscape' do
  version '1.0.0'
  sha256 '9b42468815b4bcbc8ccb76a239aea48a2965dbd2f3ae7c3b560c7f2a7e48a955'

  url "https://media.inkscape.org/dl/resources/file/Inkscape-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://inkscape.org/release',
          must_contain: version.major_minor
  name 'Inkscape'
  homepage 'https://inkscape.org/'

  app 'Inkscape.app'
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/inkscape.wrapper.sh"
  binary shimscript, target: 'inkscape'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{staged_path}/Inkscape.app/Contents/MacOS/Inkscape' "$@"
    EOS
  end

  zap trash: [
               '~/.config/inkscape',
               '~/Library/Application Support/Inkscape',
               '~/Library/Application Support/org.inkscape.Inkscape',
               '~/Library/Preferences/org.inkscape.Inkscape.plist',
               '~/Library/Saved Application State/org.inkscape.Inkscape.savedState',
             ]
end
