cask 'sidenotes' do
  version '1.1'
  sha256 '0193f365601c9747157e06c8c2af5d4ecfe242551ef49064d152dc88c70817c4'

  url "https://www.apptorium.com/public/products/sidenotes/releases/SideNotes-#{version}.zip"
  appcast 'https://www.apptorium.com/updates/sidenotes'
  name 'SideNotes'
  homepage 'https://www.apptorium.com/sidenotes'

  depends_on macos: '>= :mojave'

  app 'SideNotes.app'
end
