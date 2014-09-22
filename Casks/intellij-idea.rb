class IntellijIdea < Cask
  version '13.1.4b'
  sha256 'e72c5c2e41a0de9fd7b81093bc3d9e4357e02200dbd209fa9384ddfa4cc52e08'

  url "http://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  homepage 'https://www.jetbrains.com/idea/index.html'

  app 'IntelliJ IDEA 13.app'

  postflight do
    system "/usr/libexec/PlistBuddy", "-c", "Set :JVMOptions:JVMVersion 1.6+", "#{destination_path}/IntelliJ IDEA 13.app/Contents/Info.plist"
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
