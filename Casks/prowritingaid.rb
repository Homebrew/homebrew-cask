cask 'prowritingaid' do
  version :latest
  sha256 :no_check

  url 'https://cdn.prowritingaid.com/prowritingaid-desktop/ProWritingAid.dmg'
  name 'ProWritingAid'
  homepage 'https://prowritingaid.com/'

  app 'ProWritingAid.app'
end
