cask 'intellij-idea' do
  version '2018.1.1,181.4445.78'
  sha256 'da0ea47ceac66b1bd82a72f483b5efe5eead39818f3ca27e995987ac42e40444'

  url "https://download.jetbrains.com/idea/ideaIU-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=IIU&latest=true&type=release',
          checkpoint: '39306c65563503870e8364778ed690229a3b1a78ee967385dd7e794406688b1e'
  name 'IntelliJ IDEA Ultimate'
  homepage 'https://www.jetbrains.com/idea/'

  auto_updates true

  app 'IntelliJ IDEA.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'idea') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap trash: [
               '~/Library/Preferences/com.jetbrains.intellij.plist',
               "~/Library/Caches/IntelliJIdea#{version.major_minor}",
               "~/Library/Logs/IntelliJIdea#{version.major_minor}",
               "~/Library/Application Support/IntelliJIdea#{version.major_minor}",
               "~/Library/Preferences/IntelliJIdea#{version.major_minor}",
               '~/Library/Saved Application State/com.jetbrains.intellij.savedState',
             ]
end
