class Reaper < Cask
  homepage 'http://www.reaper.fm/'
  version '4.7'

  if Hardware::CPU.is_64_bit?
    url 'http://www.reaper.fm/files/4.x/reaper47_x86_64.dmg'
    sha256 '32d133d1bba84e812a8f50b18d58ace4f726eaa1b649c151286ddabbfde6952c'
    link 'REAPER64.app'
    link 'ReaMote64.app'
  else
    url 'http://www.reaper.fm/files/4.x/reaper47_i386.dmg'
    sha256 '98eb52be6e52257285cd4953a79a08591d92cc516890414cda2711418c833c08'
    link 'REAPER.app'
    link 'ReaMote.app'
  end
end
