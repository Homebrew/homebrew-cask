cask :v1 => 'juno' do
  version '1.0.0'
  sha256 'fd9c4f818d215a44904bdd385da183665b7c6c9abbbe1d203952c6f7e59ff841'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://junolab.s3.amazonaws.com/release/#{version}/juno-mac-x64.dmg"
  name 'Juno'
  homepage 'http://junolab.org'
  license :gpl

  app 'Juno.app'
end
