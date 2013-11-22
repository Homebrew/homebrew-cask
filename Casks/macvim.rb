class Macvim < Cask
  if MacOS.version == :mavericks
    url 'https://github.com/b4winckler/macvim/releases/download/snapshot-72/MacVim-snapshot-72-Mavericks.tbz'
    sha1 'dc983ae1e3ffae1c80f06eea9eacee49019a0c8a'
  elseif MacOS.version == :mountainlion
    url 'https://github.com/eee19/macvim/releases/download/snapshot-72/MacVim-snapshot-72-Mountain-Lion.tbz'
    sha1 'bc3b899634d73908ddba5afd9b9a74778988aec3'
  elseif MacOS.version == :lion
    url 'https://github.com/douglasdrumond/macvim/releases/download/snapshot-72/MacVim-snapshot-72-Lion.tbz'
    sha1 '1b86aa04d7149b13d27f6a4c82c7ed7cd9333dcf'
  else
    onoe "No available MacVim cask for #{MacOS.version}."
  end
  homepage 'http://code.google.com/p/macvim/'
  version '7.4-72'
  link 'MacVim-snapshot-72/MacVim.app'
end
