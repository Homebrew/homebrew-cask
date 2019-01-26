cask 'meta' do
  version '1.9.1'
  sha256 '9db6430a263a9c14781a4a8e6064629328b2b776a99ba540ed599702953562d6'

  url "https://www.nightbirdsevolve.com/meta/updates/bin/Meta%20#{version}.zip"
  appcast 'https://www.nightbirdsevolve.com/meta/updates/'
  name 'Meta'
  homepage 'https://www.nightbirdsevolve.com/meta/'

  app 'Meta.app'
end
