cask 'code-notes' do
  version '1.2.2'
  sha256 'b76f29fe200028b4cd8ab9fd4031ec8599236c760ac023e942445fd05e721ef4'

  # github.com/lauthieb/code-notes was verified as official when first introduced to the cask
  url "https://github.com/lauthieb/code-notes/releases/download/#{version}/code-notes-#{version}.dmg"
  appcast 'https://github.com/lauthieb/code-notes/releases.atom'
  name 'Code Notes'
  homepage 'https://lauthieb.github.io/code-notes/'

  app 'Code Notes.app'
end
