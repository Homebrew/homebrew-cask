cask 'swannview-link' do
  version '2.1.4.14'
  sha256 '6a695460bc886a36ca6e4e6a4446fb50078b998fe3a75b5077de347b49742aa3'

  # assistly-production.s3.amazonaws.com/195635/kb_article_attachments/101292 was verified as official when first introduced to the cask
  url 'http://assistly-production.s3.amazonaws.com/195635/kb_article_attachments/101292/SwannView_Link_2.1.4.14_original.dmg'
  name 'SwannView Link'
  homepage 'http://support.swann.com/customer/en/portal/articles/2171357-swannview-link-for-mac'

  app 'SwannView Link.app'
end
