cask :v1 => 'simplefloatingclock' do
  version :latest
  sha256 :no_check

  url 'http://www.splook.com/Software/distrib/sfc.zip'
  name 'Simple Floating Clock'
  homepage 'http://www.splook.com/Software/Simple_Floating_Clock.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Simple Floating Clock/SimpleFloatingClock.app'
end
