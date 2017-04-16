cask :v1 => 'juno' do
  version '1.0.0'
  sha256 'fd9c4f818d215a44904bdd385da183665b7c6c9abbbe1d203952c6f7e59ff841'

  url 'https://junolab.s3.amazonaws.com/release/1.0.0/juno-mac-x64.dmg'
  name 'juno'
  homepage 'http://junolab.org'
  license :gpl

  app 'Juno.app'
end
