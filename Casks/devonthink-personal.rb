cask 'devonthink-personal' do
  version '2.8.10'
  sha256 '1e33daeb2af439ee62e085ab4bc9728b26cfde06d39ba351a105d00f063b955e'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.dmg.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml',
          checkpoint: 'ade5aaf7e441870c260eceade05119d566d81a87776001aaf98416f47f4c6f54'
  name 'DEVONthink Personal'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-personal.html'
  license :commercial

  depends_on macos: '>= :mountain_lion'
  container nested: 'DEVONthink_Personal.dmg'

  app 'DEVONthink Personal.app'
end
