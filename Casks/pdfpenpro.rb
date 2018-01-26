cask 'pdfpenpro' do
  version '923.0,1510025685'
  sha256 'bcd9073dfce0b083d1ccd0e33deb5f60e6db4303608ac9d676bbe8537a66226b'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml',
          checkpoint: '9496222a3d75bb49c66d2875fc3274875ed3524bf0b4af4a660ae953fb2e1099'
  name 'PDFpenPro'
  homepage 'https://smilesoftware.com/PDFpenPro'

  app 'PDFpenPro.app'
end
