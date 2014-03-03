class Coteditor < Cask
  if MacOS.version < "10.7"
    url 'http://dl.sourceforge.jp/coteditor/54872/CotEditor_1.3.1.dmg'
    sha256 '5c871bd9de30fc3c76fc66acb4ea258d4d3762ae341181d65a7ef1f8de4751c5'
  else
    url 'http://dl.sourceforge.jp/coteditor/54872/CotEditor_1.3.1_For10.7.dmg'
    sha256 'b064830db8438682f620c0b14aec595022a331defd2f09001fc0578ae91e21b5'
  end
  homepage 'http://sourceforge.jp/projects/coteditor/'
  version '1.3.1'
  link 'CotEditor.app'
end
