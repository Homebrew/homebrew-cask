cask 'phoenix' do
  version '2.1.2'
  sha256 '62ca4018d49a2369f6ae28964c909d802776d0ad115ac1fe0920b06f465fb6f9'

  url "https://github.com/kasper/phoenix/releases/download/#{version}/phoenix-#{version}.tar.gz"
  appcast 'https://github.com/kasper/phoenix/releases.atom',
          checkpoint: '127edfa865f335e3ef56a0ba6b462937d53855ddba50e8cff5e68b8ee72eb777'
  name 'Phoenix'
  homepage 'https://github.com/kasper/phoenix/'
  license :mit

  accessibility_access true
  depends_on macos: '>= :yosemite'

  app 'Phoenix.app'

  zap delete: '~/.phoenix.js'
end
