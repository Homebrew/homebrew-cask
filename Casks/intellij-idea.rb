class IntellijIdea < Cask
  version '13.1.3'
  sha256 'ae5239e0a5670dec88c39a5157103084d0ddd2c0b8d732d6af07764f0b98b624'

  url 'http://download-cf.jetbrains.com/idea/ideaIU-13.1.3.dmg'
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
