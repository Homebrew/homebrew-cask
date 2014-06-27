class IntellijIdeaCe < Cask
  version '13.1.3'
  sha256 '4b0e3cb665aa2e3523d3c90b0075292f5ba3eaaff2bfc4872e4438193e561067'

  url 'http://download-cf.jetbrains.com/idea/ideaIC-13.1.3.dmg'
  homepage 'https://www.jetbrains.com/idea/index.html'

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
