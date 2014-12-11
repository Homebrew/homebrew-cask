cask :v1 => 'focuswriter' do
  version :latest
  sha256 :no_check

  url 'http://gottcode.org/focuswriter/download/?os=mac'
  homepage 'http://gottcode.org/focuswriter/'
  license :unknown    # todo: improve this machine-generated value

  app 'FocusWriter.app'
end
