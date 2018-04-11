cask 'pdfpenpro' do
  version '1000.14,1523363831'
  sha256 '0d1e407615a3f8a785850235cbee20323e048881089a684211985aa36f58bd99'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml',
          checkpoint: '93be2feb3b7d61af093c6878e68e7d2329316d9bc1d79a554d81e7cbdae2b1ef'
  name 'PDFpenPro'
  homepage 'https://smilesoftware.com/PDFpenPro'

  app 'PDFpenPro.app'
end
