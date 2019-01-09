cask 'barrier' do
  version '2.1.0'
  sha256 'f12738524bc002f830e711f1f054c892c5ea71af968a842b9d51a5d4276ca415'

  url "https://github.com/debauchee/barrier/releases/download/v#{version}/barrier-#{version}.dmg"
  appcast 'https://github.com/debauchee/barrier/releases.atom'
  name 'Barrier'
  homepage 'https://github.com/debauchee/barrier/'

  app 'Barrier.app'
end
