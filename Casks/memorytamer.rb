class Memorytamer < Cask
  version '0.7.8'
  sha256 '058f8157df1ab496af8eeb130804ddd3c000963d3a22e8e71e6e0d72f56f7bf6'

  url "https://memorytamer.s3.amazonaws.com/MemoryTamer-#{version}.zip"
  homepage 'https://github.com/henderea/MemoryTamer'

  link 'MemoryTamer.app'
end
