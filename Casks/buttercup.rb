cask 'buttercup' do
  version '0.9.0'
  sha256 '0a4278e8a60303e2bdbf97c4b8398841825572406c1cab5be4689be526374925'

  # github.com/buttercup-pw/buttercup was verified as official when first introduced to the cask
  url "https://github.com/buttercup-pw/buttercup/releases/download/v#{version}-alpha/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup-pw/buttercup/releases.atom',
          checkpoint: '69d0de7af6b2fb88d7407130ff58107d21c211fde295492892d3766c05da3b7f'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
