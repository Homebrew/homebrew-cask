cask 'reactotron' do
  version '1.11.0'
  sha256 'bc9751ec31c37f8d6a978b01ec66f5e9c218b0034dc96dc695e9501b086ccd4a'

  url "https://github.com/infinitered/reactotron/releases/download/v#{version}/Reactotron.app.zip"
  appcast 'https://github.com/infinitered/reactotron/releases.atom',
          checkpoint: '33cf39ba68bc0ae64d1a4eae05f70ee3fa8ad40a0786ab9ec6980bf6cb169970'
  name 'Reactotron'
  homepage 'https://github.com/infinitered/reactotron'

  app 'Reactotron.app'

  zap delete: [
                '~/Library/Application Support/Reactotron',
              ]
end
