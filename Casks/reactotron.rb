cask 'reactotron' do
  version '1.4.0'
  sha256 '48cbb5aeadb656160f81c18884d61dcfaaeb8c51c059f5ccc351d3be4335551f'

  url "https://github.com/reactotron/reactotron/releases/download/v#{version}/Reactotron.app.zip"
  appcast 'https://github.com/reactotron/reactotron/releases.atom',
          checkpoint: '231695f99367ce38084a243a4660aea1d7497c8f929b86e3c8dc08ddea3a870e'
  name 'Reactotron'
  homepage 'https://github.com/reactotron/reactotron'

  app 'Reactotron.app'

  zap delete: [
                '~/Library/Application Support/Reactotron',
              ]
end
