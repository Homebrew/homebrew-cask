cask :v1 => 'airstream' do
  version :latest
  sha256 :no_check

  url 'http://airstream.io/download/mac/airstream-mac.dmg'
  homepage 'http://airstream.io/download/'
  license :unknown    # todo: improve this machine-generated value
  app 'AirStream.app'

  caveats <<-EOS.undent
    If you have Java 7 or above installed, you may have to run the following:

      sudo mkdir -p /Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home/bundle/Libraries/
      sudo ln -s /Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home/jre/lib/server/libjvm.dylib /Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home/bundle/Libraries/libserver.dylib
  EOS
end
