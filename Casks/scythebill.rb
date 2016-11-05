cask 'scythebill' do
  version '13.2.5'
  sha256 'f265663e302169b8e5f44e1ffcdecc356f66a5b4fd243ad43522ba924011284a'

  # amazonaws.com/downloads.scythebill.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.scythebill.com/Scythebill-#{version}.dmg"
  name 'Scythebill'
  homepage 'http://www.scythebill.com/'

  app 'Scythebill.app'

  caveats do
    depends_on_java
  end
end
