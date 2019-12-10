cask 'pdfpenpro' do
  version '1120.2,1572922655'
  sha256 '73a7a1fb33678d1266e5426ddd1bf715a51491aa3e948054f5add03e4d49b078'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml'
  name 'PDFpenPro'
  homepage 'https://smilesoftware.com/PDFpenPro'

  depends_on macos: '>= :sierra'

  app 'PDFpenPro.app'
end
