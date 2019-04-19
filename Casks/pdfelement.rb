cask 'pdfelement' do
  language 'en', default: true do
    version '6.7.12,2991'
    sha256 'a4fd5421b98d00fb2433c9d64e2f29962d39dadf64e25d98e31325cdab37a711'
    homepage 'https://pdf.wondershare.com/pdf-editor-mac/'
    url "http://download.wondershare.com/mac-pdfelement#{version.major}_full#{version.after_comma}.dmg"

    # Renamed for consistency: app name is different in the Finder and in a shell.
    app "PDFelementStd#{version.major}.app", target: "PDFelement #{version.major}.app"
    'en-US'
  end

  language 'zh' do
    version '6.7.8,4223'
    sha256 'b4072a62e1a9cd00cca28afa2aa5d89a3788b733b1227c506923b1cc3a1f606c'
    homepage 'https://pdf.wondershare.cn/pdfelement-mac/'
    url "http://download.wondershare.com/mac-pdfelement#{version.major}_full#{version.after_comma}.dmg"

    # Renamed for consistency: app name is different in the Finder and in a shell.
    app "PDFelementStd#{version.major}.app", target: "PDFelement #{version.major}.app"
    'zh-CN'
  end

  name 'Wondershare PDFelement for Mac'
end
