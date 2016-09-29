cask 'gnubg' do
  if MacOS.version <= :mavericks
    version '1.03.000-x86_64'
    sha256 '90614e940a94515d265ccccabf05ae6610121207b6ba0b7ae656ac2e68c0f6ff'
    url 'http://gnubg.org/media/macos/gnubg-1_03_000-mac-x86_64.dmg'
  else
    version '1.04.000-1010-x86_64'
    sha256 '3f093856f18b0d47373d3be4094a4f127e654326438e7172c877b775764d7422'
    url 'http://gnubg.org/media/macos/gnubg-1_04_000-mac-1010-x86_64.dmg'
  end

  name 'Gnu Backgammon'
  homepage 'http://gnubg.org/'
  license :gpl

  depends_on x11: true

  app 'gnubg.app'

  caveats do
    <<-EOS.undent
      #{token} only works if called from /Applications, so you may need to install it with
        brew cask --appdir=/Applications install #{token}
    EOS
  end
end
