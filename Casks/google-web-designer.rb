cask 'google-web-designer' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/webdesigner/mac/shell/googlewebdesigner_mac.dmg'
  name 'Google Web Designer'
  homepage 'https://www.google.com/webdesigner/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Google Web Designer.app'
end
