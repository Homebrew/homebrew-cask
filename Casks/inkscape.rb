cask 'inkscape' do
  if MacOS.version <= :mojave
    version '0.92.2-1'
    sha256 'faece7a9a5fa9db7724b0c761f7f2014676d00ef8b90a0ef506fa39d09209fea'

    url "https://media.inkscape.org/dl/resources/file/Inkscape-#{version}-x11-10.7-x86_64.dmg"

    depends_on x11: true

    binary "#{appdir}/Inkscape.app/Contents/Resources/bin/inkscape"

    zap trash: '~/.inkscape-etc'
  else
    version '1.0beta2'
    sha256 '0ca755bad5b21e4cfdc6f0c442a09a5f374cfd806648e043d5965017bf427e01'

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

    zap trash: '~/Library/Application Support/Inkscape'
  end

  name 'Inkscape'
  homepage 'https://inkscape.org/'

  app 'Inkscape.app'
end
