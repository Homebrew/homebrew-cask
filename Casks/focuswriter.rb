cask 'focuswriter' do
  version :latest
  sha256 :no_check

  url 'https://gottcode.org/focuswriter/download/?os=mac'
  name 'FocusWriter'
  homepage 'https://gottcode.org/focuswriter/'
  license :gpl

  app 'FocusWriter.app'
end
