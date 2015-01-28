cask :v1 => 'intellij-idea' do
  version '14.0.3'
  sha256 '0a716c9b375a31574449bbc3961314caf7c113ae415ef0e8652e7ce60b384b23'

  url "http://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  name 'IntelliJ IDEA'
  homepage 'https://www.jetbrains.com/idea/'
  license :commercial

  app 'IntelliJ IDEA 14.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end

  zap :delete => [
                  '~/Library/Application Support/IntelliJIdea14',
                  '~/Library/Preferences/IntelliJIdea14',
                 ]

  caveats <<-EOS.undent
    #{token} may require Java 7 (an older version) available from the
    caskroom-versions repository via

      brew cask install caskroom/versions/java7

    Alternatively, #{token} can be modified to use Java 8 as described in

      https://github.com/caskroom/homebrew-cask/issues/4500#issuecomment-43955932
  EOS
end
