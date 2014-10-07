class Aquamacs < Cask

  if Hardware::CPU.is_32_bit?
    version '2.5'
    sha256 '5857848d8d46bba43d160c02393b098a370e2156608be24b288419f668210be9'

    url "http://braeburn.aquamacs.org/releases/Aquamacs-Emacs-#{version}.dmg"
  else
    version '3.0a'
    sha256 '1d833cb2e40c1af96713badc4efa7c1c9259317b91edcfe17059c73e989f9e07'

    url "https://github.com/davidswelt/aquamacs-emacs/releases/download/Aquamacs-3.0a/Aquamacs-Emacs-#{version}.dmg"
  end

  homepage 'http://aquamacs.org/'
  license :oss

  app 'Aquamacs.app'
end
