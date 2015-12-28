cask 'dataurlmaker' do
  version '1.1'
  sha256 'dc297a57ea7180273a17fe8503f7ed7423afb66e210f67d32c4e566fa8e797e1'

  url "https://github.com/sveinbjornt/Data-URL-Toolkit/raw/master/Releases/DataURLMaker-#{version}.zip"
  appcast 'https://github.com/sveinbjornt/Data-URL-Toolkit/raw.atom',
          :sha256 => '01285b79fe6500f7904eeba513abd203d7262e1bcbd2b32d26ba2d32bc342ee1'
  name 'DataURLMaker'
  homepage 'https://github.com/sveinbjornt/Data-URL-Toolkit'
  license :gpl

  app 'DataURLMaker.app'
end
