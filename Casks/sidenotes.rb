cask 'sidenotes' do
  version '1.1.1'
  sha256 '825e29363dae9ee8318ee45a6ebbad3bd07e56bf96cf29cd8f922074a1be76c5'

  url "https://www.apptorium.com/public/products/sidenotes/releases/SideNotes-#{version}.zip"
  appcast 'https://www.apptorium.com/updates/sidenotes'
  name 'SideNotes'
  homepage 'https://www.apptorium.com/sidenotes'

  depends_on macos: '>= :mojave'

  app 'SideNotes.app'
end
