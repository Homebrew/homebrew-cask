class IntellijIdea < Cask
  url 'http://download-cf.jetbrains.com/idea/ideaIU-13.1.2.dmg'
  homepage 'https://www.jetbrains.com/idea/index.html'
  version '13.1.2'
  sha256 '7968149499106fb078d89fe41135bd1611cfcd124fc2992f55e1090da8f71365'
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
