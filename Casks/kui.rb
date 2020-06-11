cask 'kui' do
  version '8.9.1'
  sha256 '41778159c8fe32d77ca84449d81ccb2674656a5bbe3a1d45eea187543e572b9e'

  # github.com/IBM/kui was verified as official when first introduced to the cask
  url "https://github.com/IBM/kui/releases/download/v#{version}/Kui-darwin-x64.tar.bz2"
  appcast 'https://github.com/IBM/kui/releases.atom'
  name 'Kui'
  homepage 'https://kui.tools/'

  app 'Kui-darwin-x64/Kui.app'

  # binary 'Kui-darwin-x64/kubectl-kui'

  # TODO: Uncomment the line above and adjust caveats
  # when kubectl-kui can find Kui.app in /Applications on Mac.
  # https://github.com/IBM/kui/pull/4878
  #
  # The following is based on https://github.com/ibm/kui#installation
  caveats <<~EOS
    Kui installs as an app in /Applications, but the kubectl plugin
    (for kubectl 1.12+) does not look there. 

    See https://github.com/IBM/kui/pull/4878 for updates, but for now
    temporarily add #{staged_path}/Kui-darwin-x64 to your PATH:

    In ~/.zprofile or ~/.bash_profile:

      export PATH="#{staged_path}/Kui-darwin-x64:${PATH}"
    
    Then to test it out, run:

      kubectl kui get pods
    
    After that command, you should see a popup window listing pods 
    in your current namespace and context. 
    
    If kubectl is not found, you can install it with:

      brew install kubernetes-cli
  EOS
end
