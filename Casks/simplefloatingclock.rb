cask :v1 => 'simplefloatingclock' do
  version :latest
  sha256 :no_check

  url 'http://www.splook.com/Software/distrib/sfc.zip'
  homepage 'http://www.splook.com/Software/Simple_Floating_Clock.html'
  license :unknown    # todo: improve this machine-generated value

  app 'Simple Floating Clock/SimpleFloatingClock.app'
end
