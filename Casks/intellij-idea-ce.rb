class IntellijIdeaCe < Cask
  url 'http://download-cf.jetbrains.com/idea/ideaIC-13.1.2.dmg'
  homepage 'https://www.jetbrains.com/idea/index.html'
  version '13.1.2'
  sha256 '99422ba5faacd4d6aabf029b83cf1f9dd22fe445116b984df25d49ae8609e46e'
  link 'IntelliJ IDEA 13 CE.app'
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
