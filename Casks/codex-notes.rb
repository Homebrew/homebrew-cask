cask 'codex-notes' do
  version '2.2.3'
  sha256 'd24c15431b7e3229dfa70d744d8ecbb04de0ee1649455d7bda468d193b8c75d7'

  url "https://github.com/codex-team/codex.notes/releases/download/v#{version}/codex.notes-#{version}.dmg"
  appcast 'https://github.com/codex-team/codex.notes/releases.atom'
  name 'CodeX Notes'
  homepage 'https://github.com/codex-team/codex.notes'

  app 'CodeX Notes.app'
end
