cask 'lockdown' do
  version '1.0.0'
  sha256 '047f377e2a9495361084268c86cc80719e123bd8958d69fe51cd2be0d7ffd764'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/Lockdown_#{version}.zip"
  name 'Lockdown'
  homepage 'https://objective-see.com/products/lockdown.html'

  app 'Lockdown.app'
end
