class Aquamacs < Cask
  url 'https://github.com/davidswelt/aquamacs-emacs/releases/download/Aquamacs-3.0a/Aquamacs-Emacs-3.0a.dmg'
  homepage 'http://aquamacs.org/'
  version '3.0a'
  sha256 '1d833cb2e40c1af96713badc4efa7c1c9259317b91edcfe17059c73e989f9e07'
  link 'Aquamacs.app'
  caveats <<-EOS.undent
    This version of Aquamacs is for 64-bit Intel-based Macs only. If you have
    a 32-bit Intel-based Mac, please run 'brew tap caskroom/versions' and
    install aquamacs25.
    EOS
end
