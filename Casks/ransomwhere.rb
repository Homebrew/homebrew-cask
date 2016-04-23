cask 'ransomwhere' do
  version '1.0.0'
  sha256 '412a22a22342235f08bbe34512cc612ddeee11e79e1a89ba00e17b346c99a05c'

  url "https://bitbucket.org/objective-see/deploy/downloads/RansomWhere_#{version}.zip"
  name 'RansomWhere'
  homepage 'https://objective-see.com/products/ransomwhere.html'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'RansomWhere.app'
end
