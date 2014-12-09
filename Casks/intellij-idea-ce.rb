cask :v1 => 'intellij-idea-ce' do
  version '14.0.2'
  sha256 'e03e2a60b4bc067575cd75d27cc3b59209dcbd68c0567a8f24ab19d83ac1c986'

  url "http://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  homepage 'https://www.jetbrains.com/idea/'
  license :oss

  app 'IntelliJ IDEA 14 CE.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end

  zap :delete => [
                  '~/Library/Application Support/IdeaIC14',
                  '~/Library/Preferences/IdeaIC14',
                  '~/Library/Caches/IdeaIC14',
                  '~/Library/Logs/IdeaIC14',
                 ]

  # todo: transitional, replace #{self.name...} with #{token}
  caveats <<-EOS.undent
    #{self.name.sub(/^KlassPrefix/,'').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').downcase} may require Java 7 (an older version), available from the
    caskroom-versions repository via

      brew cask install caskroom/versions/java7

    Alternatively, #{self.name.sub(/^KlassPrefix/,'').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').downcase} can be modified to use Java 8 as described in

      https://github.com/caskroom/homebrew-cask/issues/4500#issuecomment-43955932
  EOS
end
