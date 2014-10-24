class IntellijIdea < Cask
  version '13.1.5'
  sha256 'd6ba0c3e4c672d6685dec5c866966953fd7f1edc231040e00234af42f140a1da'

  url "http://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  homepage 'https://www.jetbrains.com/idea/index.html'
  license :oss

  app 'IntelliJ IDEA 13.app'

  postflight do
    system '/usr/libexec/PlistBuddy', '-c', 'Set :JVMOptions:JVMVersion 1.6+', "#{destination_path}/IntelliJ IDEA 13.app/Contents/Info.plist"
  end

  zap :delete => [
                  '~/Library/Application Support/IntelliJIdea13',
                  '~/Library/Preferences/IntelliJIdea13',
                 ]

  caveats <<-EOS.undent
    #{title} may require Java 7 (an older version) available from the
    caskroom-versions repository via

      brew cask install caskroom/versions/java7

    Alternatively, #{title} can be modified to use Java 8 as described in

      https://github.com/caskroom/homebrew-cask/issues/4500#issuecomment-43955932
  EOS
end
