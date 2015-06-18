cask :v1 => 'pdfpenpro' do
  version :latest
  sha256 :no_check

  url 'http://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/PDFpenPro.zip'
  name 'PDFpenPro'
  appcast 'http://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml',
          :sha256 => '20c1ab602462b7fc0d5b4cbd555cacf127b69a07a737579598ebcbc0f5b21319'
  homepage 'http://www.smilesoftware.com/PDFpenPro/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'PDFpenPro.app'
end
