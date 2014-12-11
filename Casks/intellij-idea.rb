cask :v1 => 'intellij-idea' do
  version '14.0.2'
  sha256 'cfab01c2b5b7265f0cf7b365872180261154a5e3ff1fc710c545d36e1f936a7b'

  url "http://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  homepage 'https://www.jetbrains.com/idea/index.html'
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
