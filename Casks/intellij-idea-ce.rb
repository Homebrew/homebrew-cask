class IntellijIdeaCe < Cask
  version '13.1.4'
  sha256 '33253297570e99df5de5ac25cfffc97f94c115c2e13c7669210a7c1cbdc55d55'

  url "http://download-cf.jetbrains.com/idea/ideaIC-#{version}.dmg"
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
