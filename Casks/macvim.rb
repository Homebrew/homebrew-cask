class Macvim < Cask
  homepage 'http://code.google.com/p/macvim/'
  version '7.4-71'

  if MacOS.version == :snow_leopard
    url 'https://github.com/b4winckler/macvim/releases/download/snapshot-71/MacVim-snapshot-71-Snow-Leopard.tbz'
    sha1 '104d5468544f008d84a22662798bf9bfae128993'
  elsif MacOS.version >= :lion
    url 'https://github.com/eee19/macvim/releases/download/snapshot-71/MacVim-snapshot-71.tbz'
    sha1 '99c9d04b1a20fd53231bead9d10362070d0174e6'
  end

  link 'MacVim-snapshot-71/MacVim.app'
end
