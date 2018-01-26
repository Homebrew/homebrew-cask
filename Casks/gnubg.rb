cask 'gnubg' do
  if MacOS.version <= :mavericks
    version '1.03.000'
    sha256 '90614e940a94515d265ccccabf05ae6610121207b6ba0b7ae656ac2e68c0f6ff'

    url "http://gnubg.org/media/macos/gnubg-#{version.dots_to_underscores}-mac-x86_64.dmg"
  else
    version '1.04.000,1010'
    sha256 '3f093856f18b0d47373d3be4094a4f127e654326438e7172c877b775764d7422'

    url "http://gnubg.org/media/macos/gnubg-#{version.before_comma.dots_to_underscores}-mac-#{version.after_comma}-x86_64.dmg"
  end

  name 'Gnu Backgammon'
  homepage 'http://gnubg.org/'

  depends_on x11: true

  app 'gnubg.app'

  caveats <<~EOS
    #{token} only works if called from /Applications, so you may need to install it with
      brew cask install #{token} --appdir=/Applications
  EOS
end
