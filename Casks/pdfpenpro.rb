cask 'pdfpenpro' do
  version '834.1,1491270914'
  sha256 '557ca93851d8a322584d2623d3cf147777274bd94b25d3d52d7ec686a1fa36bd'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml',
          checkpoint: '999e7644050e6963211890ab4d9e4f679d0da4395ad653eae41dfa0a9800e574'
  name 'PDFpenPro'
  homepage 'https://smilesoftware.com/PDFpenPro'

  app 'PDFpenPro.app'
end
