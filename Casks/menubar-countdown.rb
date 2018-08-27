cask 'menubar-countdown' do
  version '1.2'
  sha256 '4ee0a7a87dbd4013c461b59316c749a5f9a92160bdf6d90afb1ff029f9381c01'

  # amazonaws.com/capablehands was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/capablehands/downloads/MenubarCountdown-#{version}.zip"
  name 'Menubar Countdown'
  homepage 'https://github.com/kristopherjohnson/MenubarCountdown'

  app "MenubarCountdown-#{version}/Menubar Countdown.app"
end
