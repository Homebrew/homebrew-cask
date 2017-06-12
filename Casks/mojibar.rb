cask 'mojibar' do
  version '2.5.0'
  sha256 'b9c01bbc685ecde6d24b47b765dfafa31819b892934681d350d76193dfd7d1d7'

  url "https://github.com/muan/mojibar/releases/download/#{version}/mojibar.zip"
  appcast 'https://github.com/muan/mojibar/releases.atom',
          checkpoint: 'e8ec09447237fed962023f9f16d3cc7ccdd4e4548b1a1242bc502ca85c430fe2'
  name 'Mojibar'
  homepage 'https://github.com/muan/mojibar'

  app 'Mojibar-darwin-x64/Mojibar.app'
end
