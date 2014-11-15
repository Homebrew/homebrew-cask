cask :v1 => 'eye-one-profiler' do
  version '1.5.6'
  sha256 '29804334aebcb98469e7db4ab476b1d20c42b73eb98e2c8b495057f282972528'

  url 'http://www.xrite.com/downloader.aspx?FileID=1455&Type=M&returnurl=%2fi1profiler-i1publish%2fsupport%2fd1455'
  homepage 'http://www.xrite.com/i1profiler-i1publish/support/d1455'
  license :unknown

  pkg 'i1Profiler.pkg'
  uninstall :pkgutil => 'com.xrite.i1profiler.*'

  caveats do
    reboot
  end
end
