class IntellijIdeaCeEap < Cask
  version '138.2210.3'
  sha256 'b92a8b3d7cc2e569d35f2548fd2151e75e97cca08613957767d86664194e50cd'

  url "http://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  homepage 'https://www.jetbrains.com/idea/index.html'

  app 'IntelliJ IDEA 14 CE EAP.app'

  postflight do
    system "/usr/libexec/PlistBuddy", "-c", "Set :JVMOptions:JVMVersion 1.6+", "#{destination_path}/#{app}/Contents/Info.plist"
  end

  caveats do
    <<-EOS.undent
    #{@cask} may require Java 7 (an older version) available from the
    caskroom-versions repo via

        brew cask install caskroom/versions/java7

    Alternatively, #{@cask} can be modified to use Java 8 as described in

        https://github.com/caskroom/homebrew-cask/issues/4500#issuecomment-43955932

    EOS
  end
end

