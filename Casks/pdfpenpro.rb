cask 'pdfpenpro' do
  version '911.1,1503633565'
  sha256 '1385502192334f9c69c8e5ef38a69185dbd26742615a8184199d81552ff886e6'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml',
          checkpoint: '5f91f9a37b7a3a4e86b57eb3cd02d4d393b3725deb85879bc151d425947d328d'
  name 'PDFpenPro'
  homepage 'https://smilesoftware.com/PDFpenPro'

  app 'PDFpenPro.app'
end
