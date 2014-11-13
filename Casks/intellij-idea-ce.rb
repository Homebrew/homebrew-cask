cask :v1 => 'intellij-idea-ce' do
  version '14'
  sha256 'd742778574f244ef1f70277a65bbe73b9baf38ead3b6c15d555d5418357f07e1'

  url "http://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  homepage 'https://www.jetbrains.com/idea/'
  license :oss

  app 'IntelliJ IDEA 14 CE.app'

  postflight do
    system '/usr/libexec/PlistBuddy', '-c', 'Set :JVMOptions:JVMVersion 1.6+', "#{staged_path}/IntelliJ IDEA 14 CE.app/Contents/Info.plist"
  end

  zap :delete => [
                  '~/Library/Application Support/IdeaIC14',
                  '~/Library/Preferences/IdeaIC14',
                  '~/Library/Caches/IdeaIC14',
                  '~/Library/Logs/IdeaIC14',
                 ]

  caveats <<-EOS.undent
    #{title} may require Java 7 (an older version), available from the
    caskroom-versions repository via

      brew cask install caskroom/versions/java7

    Alternatively, #{title} can be modified to use Java 8 as described in

      https://github.com/caskroom/homebrew-cask/issues/4500#issuecomment-43955932
  EOS
end
