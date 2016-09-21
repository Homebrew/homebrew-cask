cask 'logos-bible-software' do
  version '6.14.0.65'
  sha256 'faa0509d16e69366cc6648e7aae37b9332cd05bc2f864dc6197254a3c8a57684'

  url 'https://www.logos.com/cgi/DownloadFile.aspx?ID=194'
  name 'Logos Bible Software'
  homepage 'https://www.logos.com'
  license :commercial

  app 'Logos.app'
end
