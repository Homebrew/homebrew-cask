cask 'inkscape' do
  if MacOS.version <= :mojave
    version '0.92.2-1'
    sha256 'faece7a9a5fa9db7724b0c761f7f2014676d00ef8b90a0ef506fa39d09209fea'

    url "https://media.inkscape.org/dl/resources/file/Inkscape-#{version}-x11-10.7-x86_64.dmg"

    depends_on x11: true

    binary "#{appdir}/Inkscape.app/Contents/Resources/bin/inkscape"

    zap trash: '~/.inkscape-etc'
  else
    version '1.0beta1'
    sha256 '68831989b3919e3137d5acfb130a844933706748addc8b4cd7f957348c1c60a3'

    url "https://media.inkscape.org/dl/resources/file/Inkscape-#{version}_OEMhoXK.dmg"

    zap trash: '~/Library/Application Support/Inkscape'
  end

  name 'Inkscape'
  homepage 'https://inkscape.org/'

  app 'Inkscape.app'
end
