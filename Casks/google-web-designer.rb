cask :v1 => 'google-web-designer' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/webdesigner/mac/shell/googlewebdesigner_mac.dmg'
  homepage 'https://www.google.com/webdesigner/'
  license :unknown    # todo: improve this machine-generated value

  app 'Google Web Designer.app'
end
