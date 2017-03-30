cask 'pgweb' do
  version '0.9.6'
  sha256 '7ae19e6fd93ef53cadd31ca623d2193f93b175be5cba0f0dfe80a84f1eeb09f4'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/pgweb/releases.atom',
          checkpoint: '85469b28b0473229d9c5383706716d0631e8a9bbd911b21895a9205b0ed542bb'
  name 'pgweb'
  homepage 'https://github.com/sosedoff/pgweb'

  binary 'pgweb_darwin_amd64', target: 'pgweb'
end
