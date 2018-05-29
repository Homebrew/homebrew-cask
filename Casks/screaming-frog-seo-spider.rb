cask 'screaming-frog-seo-spider' do
  if MacOS.version <= :lion
    version '2.40'
    sha256 'f37a517cb1ddb13a0621ae2ef98eba148027b3a2b5ce56b6e6b4ca756e40329b'
  else
    version '9.3'
    sha256 'cbc9ea9ba1140b5955d6dd20a147ed7071e46c901a9be9df3aafd1fbaf8f0875'
  end

  url "https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}.dmg"
  appcast 'https://www.screamingfrog.co.uk/wp-content/themes/screamingfrog/inc/download-modal.php',
          checkpoint: '7fee4b2b3c3138d4a0ea6b91614931e97804ffa00222471a95d9ef28a80293bc'
  name 'Screaming Frog SEO Spider'
  homepage 'https://www.screamingfrog.co.uk/seo-spider/'

  app 'Screaming Frog SEO Spider.app'

  caveats do
    depends_on_java '7+'
  end
end
