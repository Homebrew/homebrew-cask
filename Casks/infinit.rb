cask :v1 => 'infinit' do
  version :latest
  sha256 :no_check

  url 'https://download.infinit.io/macosx/installer/Infinit.dmg'
  homepage 'https://infinit.io/'
  license :unknown

  app 'Infinit.app'
end
