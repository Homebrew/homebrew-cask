cask 'molsoftbrowser' do
  version '3.8-7d'
  sha256 '4a831c7525b72f81138f99fc4f96a40a390f3809e7818f93ba43973291bdef28'

  url "http://www.molsoft.com/getbrowser.cgi?product=icm-browser&act=give&mirror=molsoft&platform=mac64&ver=#{version}"
  appcast 'https://www.molsoft.com/getbrowser.cgi'
  name 'Molsoft Browser'
  homepage 'https://www.molsoft.com/icm_browser.html'

  app 'MolsoftBrowser64.app'
end
