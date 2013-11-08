class Macvim < Cask
  if MacOS.version == :mavericks
    url 'https://github.com/b4winckler/macvim/releases/download/snapshot-72/MacVim-snapshot-72-Mavericks.tbz'
    sha1 'dc983ae1e3ffae1c80f06eea9eacee49019a0c8a'
  else
    url 'https://github.com/eee19/macvim/releases/download/snapshot-72/MacVim-snapshot-72-Mountain-Lion.tbz'
    sha1 'bc3b899634d73908ddba5afd9b9a74778988aec3'
  end
  homepage 'http://code.google.com/p/macvim/'
  version '7.4-72'
  link 'MacVim-snapshot-72/MacVim.app'
end
