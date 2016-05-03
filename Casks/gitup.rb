cask 'gitup' do
  version '1.0.5'
  sha256 'ca230886c4e808518b918530392ef2eb6aea5d11dcf4ea23a89a271d3d0ee3f1'

  # s3-us-west-2.amazonaws.com/gitup-builds was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/gitup-builds/stable/GitUp.zip'
  appcast 'https://github.com/git-up/GitUp/releases.atom',
          checkpoint: '70b0baa99c73973227fc6a3a361e0b7bf6df59dbd77972400a028604e4d21ef9'
  name 'GitUp'
  homepage 'http://gitup.co'
  license :gpl

  depends_on macos: '>= :mountain_lion'

  app 'GitUp.app'
  binary 'GitUp.app/Contents/SharedSupport/gitup'
end
