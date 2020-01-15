cask 'sidenotes' do
  version '1.0.2'
  sha256 '463d9553da81b40a28098b4f2ad5040c3d3b71bfdfb7bc1f8434f8b53325f222'

  url "https://www.apptorium.com/public/products/sidenotes/releases/SideNotes-#{version}.zip"
  appcast 'https://www.apptorium.com/updates/sidenotes'
  name 'SideNotes'
  homepage 'https://www.apptorium.com/sidenotes'

  depends_on macos: '>= :mojave'

  app 'SideNotes.app'
end
