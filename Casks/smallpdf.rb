cask 'smallpdf' do
  version '1' # This is just a dummy number - since the audit step requires some non-null value, whereas the s/w publisher does not have any versions. Not using :latest, since that triggers the '--greedy' flag when upgrading
  sha256 :no_check

  url 'https://download.smallpdf.com/desktop/mac/Smallpdf.dmg'
  name 'Smallpdf'
  homepage 'https://smallpdf.com/pdf-reader'

  app 'Smallpdf.app'
end
