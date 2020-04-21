cask 'inkscape' do
  if MacOS.version <= :mojave
    version '0.92.2-1'
    sha256 'faece7a9a5fa9db7724b0c761f7f2014676d00ef8b90a0ef506fa39d09209fea'

    url "https://media.inkscape.org/dl/resources/file/Inkscape-#{version}-x11-10.7-x86_64.dmg"

    depends_on x11: true

    binary "#{appdir}/Inkscape.app/Contents/Resources/bin/inkscape"

    zap trash: '~/.inkscape-etc'
  else
    version '1.0.0rc1'
    sha256 'c8b1e7e274512a8f7e63a2687376e132d3967b2adbd7163c2d69535e2688957e'

    url "https://media.inkscape.org/dl/resources/file/Inkscape-#{version}.dmg"

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
                 '~/Library/Application Support/Inkscape',
                 '~/Library/Application Support/org.inkscape.Inkscape',
                 '~/Library/Preferences/org.inkscape.Inkscape.plist',
                 '~/Library/Saved Application State/org.inkscape.Inkscape.savedState',
               ]
  end

  name 'Inkscape'
  homepage 'https://inkscape.org/'

  app 'Inkscape.app'
end
