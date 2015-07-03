cask :v1 => 'infinit' do
  version :latest
  sha256 :no_check

  url 'https://hephaestus.infinit.io/macosx/installer/Infinit.dmg'
  name 'Infinit'
  homepage 'https://infinit.io'
  license :bsd

  app 'Infinit.app'
end

