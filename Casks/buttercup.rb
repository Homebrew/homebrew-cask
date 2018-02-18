cask 'buttercup' do
  version '1.2.2'
  sha256 'fe444aa2faf0bd68e04eabf15ca32d6d3768974bc70af6f6bfc8b6756cdecaaf'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/buttercup-desktop-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom',
          checkpoint: 'bec9ccec95d18ba2fd2ac82bbfc5e9a008c51fe618a9a986d58904dd10e43404'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
