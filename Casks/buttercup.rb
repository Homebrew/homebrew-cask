cask 'buttercup' do
  version '0.21.1'
  sha256 'c717b320b6b773fe69ff5cce49d54e8ac7fcca436459ae1b4c813252e867a824'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom',
          checkpoint: '87e8300417b516a1ad7f653e455fc36fdde39297226ba6f38b4da05e55cbf7b3'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
