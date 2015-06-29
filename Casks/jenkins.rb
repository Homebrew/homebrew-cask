cask :v1 => 'jenkins' do
  version '1.598'
  sha256 '382f68b259fddb6bb143c4db8bd8c3b8476be94a054cec16f7f532a6df965073'

  url "http://mirrors.jenkins-ci.org/osx/jenkins-#{version}.pkg"
  name 'Jenkins'
  homepage 'https://jenkins-ci.org/'
  license :mit

  pkg "jenkins-#{version}.pkg"
  binary '/Library/Application Support/Jenkins/jenkins-runner.sh', :target => 'jenkins-runner'

  uninstall :script    => '/Library/Application Support/Jenkins/Uninstall.command',
            :pkgutil   => 'org.jenkins-ci.*pkg',
            :launchctl => 'org.jenkins-ci'

  zap :delete => '/Library/Preferences/org.jenkins-ci.plist'

  conflicts_with :formula => %w{
                                jenkins
                                homebrew/versions/jenkins-lts
                               },
                 :cask    => 'caskroom/versions/jenkins-lts'

  caveats <<-EOS.undent
    #{token} requires Java. You can install the latest version with
      brew cask install java

    You can change the launch parameters for #{token} using "defaults",
    as described in
      https://wiki.jenkins-ci.org/display/JENKINS/Thanks+for+using+OSX+Installer

    Alternatively, you can directly run #{token} with custom parameters, eg
      java -jar /Applications/Jenkins/jenkins.war -XX:PermSize=$MIN_PERM_GEN --httpPort=$HTTP_PORT

    For more options, see
      https://wiki.jenkins-ci.org/display/JENKINS/Starting+and+Accessing+Jenkins
  EOS
end
