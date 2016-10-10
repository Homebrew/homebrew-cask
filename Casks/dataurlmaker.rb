cask 'dataurlmaker' do
  version '1.1'
  sha256 'dc297a57ea7180273a17fe8503f7ed7423afb66e210f67d32c4e566fa8e797e1'

  url "https://github.com/sveinbjornt/Data-URL-Toolkit/raw/master/Releases/DataURLMaker-#{version}.zip"
  name 'DataURLMaker'
  homepage 'https://github.com/sveinbjornt/Data-URL-Toolkit'

  app 'DataURLMaker.app'
end
