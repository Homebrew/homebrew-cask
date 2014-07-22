require 'fileutils'

class Snes9x < Cask
  version '1.53'
  sha256 '48b0cbec848e7c2a24de1b30819dc150b62e354600cbcc0a6a5e2cf8e1de48ff'

  url 'http://files.ipherswipsite.com/snes9x/snes9x-1.53-macosx-113.dmg.gz'
  homepage 'http://www.snes9x.com/'

  container_type :naked
  before_install do
    system('/usr/bin/gunzip', destination_path.join('snes9x-1.53-macosx-113.dmg.gz'))
  end
  nested_container 'snes9x-1.53-macosx-113.dmg'

  after_install do
    FileUtils.rm(destination_path.join('snes9x-1.53-macosx-113.dmg'))
  end

  link 'Snes9x.app'
end
