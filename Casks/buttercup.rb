cask 'buttercup' do
  version '0.21.4'
  sha256 '942c81dde6f4d31f9de00446e32c9774884976b1133b66083b16143a35636465'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom',
          checkpoint: '578e6f1fd5b04255173ec2925cf5a70fc1f4660ab6da78fadd279e4467f2b44e'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
