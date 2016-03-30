cask 'focuswriter' do
  version :latest
  sha256 :no_check

  url 'http://gottcode.org/focuswriter/download/?os=mac'
  name 'FocusWriter'
  homepage 'http://gottcode.org/focuswriter/'
  license :gpl

  app 'FocusWriter.app'
end
