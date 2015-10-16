cask :v1 => 'lytro-desktop' do
  version '4.3.1'
  sha256 '3f368066d97230b71ffb81f0d0468bb459e2cf615fb02cd6b4cdeebd3b25ba60'

  # amazonaws.com is the official download host per the appcast feed
  url 'https://s3.amazonaws.com/lytro-distro/lytro-150724.96.dmg'
  appcast 'https://pictures.lytro.com/support/software_update',
    :sha256 => 'a24271bb26982429e8e42ff2f3e1ab3d1690192cc2acc2ce36346ed4302e5904'
  name 'Lytro Desktop'
  homepage 'https://www.lytro.com/'
  license :gratis

  app 'Lytro Desktop.app'
end
