cask 'bdash' do
  version '1.2.2'
  sha256 '3fd4764e7454ff8861562ade2162e0a1d28ea7d80b1ba466f4a7aa6095ac84dd'

  url "https://github.com/bdash-app/bdash/releases/download/#{version}/Bdash-#{version}-macOS.zip"
  appcast 'https://github.com/bdash-app/bdash/releases.atom',
          checkpoint: '3f5cebce3e85be302157f59b86f6dd26c595c0f60948fcbeafcd065bc5b3983c'
  name 'Bdash'
  homepage 'https://github.com/bdash-app/bdash'

  app 'Bdash.app'
end
