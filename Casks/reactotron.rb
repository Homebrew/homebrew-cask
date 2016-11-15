cask 'reactotron' do
  version '1.5.0'
  sha256 'acea33257a0f06db44fb8072edec2ab9f435478647ba2bc28173a7abb238bf70'

  url "https://github.com/reactotron/reactotron/releases/download/v#{version}/Reactotron.app.zip"
  appcast 'https://github.com/reactotron/reactotron/releases.atom',
          checkpoint: '5ad1399abfb77d90646ebe786edfb19fc776138a4542349cdfc965397b372012'
  name 'Reactotron'
  homepage 'https://github.com/reactotron/reactotron'

  app 'Reactotron.app'

  zap delete: [
                '~/Library/Application Support/Reactotron',
              ]
end
