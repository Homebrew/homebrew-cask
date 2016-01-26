cask 'gnubg' do
  if Hardware::CPU.type == :ppc
    version '1.03.000-ppc'
    sha256 'd5a230225e9c85f7611a939b0848fe028e6834babb2fe8140013d65fa2b800fe'
    url 'http://gnubg.org/media/macos/gnubg-1_03_000-mac-ppc.dmg'
  elsif Hardware::CPU.is_32_bit?
    version '1.03.000-i386'
    sha256 'e6c7012caf77da12c539b2f50e611bc311aba92166a58396dc21df33c2da3397'
    url 'http://gnubg.org/media/macos/gnubg-1_03_000-mac-i386.dmg'
  elsif MacOS.release <= :mavericks
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

      Alternatively, you can create a symbolic link in /Applications after installing and upgrading:
        ln -sf '#{staged_path}/gnubg.app' '/Applications/gnubg.app'
    EOS
  end
end
