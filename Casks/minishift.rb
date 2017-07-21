cask 'minishift' do
  version '1.3.0'
  sha256 '58adc54b3fbc285ad6fd7037266bc8f134e2521c30836f4ecfe23bcc6110e72c'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: 'aa87dfc9508df65e954c52233092a9812152840720d15523302334a87d18cec8'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary 'minishift'
end
