cask :v1 => 'focuswriter' do
  version :latest
  sha256 :no_check

  url 'http://gottcode.org/focuswriter/download/?os=mac'
  homepage 'http://gottcode.org/focuswriter/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'FocusWriter.app'
end
