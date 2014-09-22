class IntellijIdeaCe < Cask
  version '13.1.4b'
  sha256 '08b1ccee390dd3470d433fed8a45fa3b814d3f315fca64bb3617b6b155b33dcc'

  url "http://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  homepage 'https://www.jetbrains.com/idea/index.html'

  app 'IntelliJ IDEA 13 CE.app'

  postflight do
    system "/usr/libexec/PlistBuddy", "-c", "Set :JVMOptions:JVMVersion 1.6+", "#{destination_path}/IntelliJ IDEA 13 CE.app/Contents/Info.plist"
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
