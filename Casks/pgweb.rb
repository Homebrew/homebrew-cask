cask 'pgweb' do
  version '0.9.6'
  sha256 '7ae19e6fd93ef53cadd31ca623d2193f93b175be5cba0f0dfe80a84f1eeb09f4'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/pgweb/releases.atom',
          checkpoint: '701b48686b44214fd068a789306029ff1ed66c7c0893852345b6b83ed0c91990'
  name 'pgweb'
  homepage 'https://github.com/sosedoff/pgweb'

  binary 'pgweb_darwin_amd64', target: 'pgweb'
end
