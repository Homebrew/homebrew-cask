class IntellijIdea < Cask
  version '13.1.4'
  sha256 'be5ca65ab5b169ac66f47f02f49d5d9359935c9f56140327a32f9da555d845bb'

  url 'http://download-cf.jetbrains.com/idea/ideaIU-#{version}.dmg'
  homepage 'https://www.jetbrains.com/idea/index.html'

  link 'IntelliJ IDEA 13.app'
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
