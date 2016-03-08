cask 'jenkins' do
  version '1.639'
  sha256 'be0637aa4b0078d3998d12d1e51ae9a79343d948d21c803a1d33855e94dade36'

  url "http://mirrors.jenkins-ci.org/osx/jenkins-#{version}.pkg"
  name 'Jenkins'
  homepage 'https://jenkins-ci.org/'
  license :mit

  conflicts_with formula: %w[
                            jenkins
                            homebrew/versions/jenkins-lts
                          ],
                 cask:    'caskroom/versions/jenkins-lts'

  pkg "jenkins-#{version}.pkg"
  binary '/Library/Application Support/Jenkins/jenkins-runner.sh', target: 'jenkins-runner'

  uninstall script:    '/Library/Application Support/Jenkins/Uninstall.command',
            pkgutil:   'org.jenkins-ci.*pkg',
            launchctl: 'org.jenkins-ci'

  zap delete: '/Library/Preferences/org.jenkins-ci.plist'

  caveats do
    depends_on_java

    <<-EOS.undent
      You can change the launch parameters for #{token} using "defaults",
      as described in
        https://wiki.jenkins-ci.org/display/JENKINS/Thanks+for+using+OSX+Installer

      Alternatively, you can directly run #{token} with custom parameters, eg
        java -jar /Applications/Jenkins/jenkins.war -XX:PermSize=$MIN_PERM_GEN --httpPort=$HTTP_PORT

      For more options, see
        https://wiki.jenkins-ci.org/display/JENKINS/Starting+and+Accessing+Jenkins
    EOS
  end
end
