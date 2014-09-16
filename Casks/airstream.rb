class Airstream < Cask
  version 'latest'
  sha256 :no_check

  url 'http://airstream.io/download/mac/airstream-mac.dmg'
  homepage 'http://airstream.io/download/'
  link 'AirStream.app'

  caveats do
    puts <<-EOS.undent
      If you have Java 7 or above installed, you may have to run the following commands:
        sudo mkdir -p /Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home/bundle/Libraries/
        sudo ln -s /Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home/jre/lib/server/libjvm.dylib /Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home/bundle/Libraries/libserver.dylib
    EOS
  end
end
