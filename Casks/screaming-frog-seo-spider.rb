cask 'screaming-frog-seo-spider' do
  if MacOS.version <= :lion
    version '2.40'
    sha256 'f37a517cb1ddb13a0621ae2ef98eba148027b3a2b5ce56b6e6b4ca756e40329b'
  else
    version '8.3'
    sha256 '4ac1924c2be29bac37b730ba0a406e7d5367a07a72e2dfc9f0ac02b7db879b06'
  end

  url "https://www.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}.dmg"
  appcast 'https://www.screamingfrog.co.uk/wp-content/themes/screamingfrog/inc/download-modal.php',
          checkpoint: '25054900a5f73770ce702561681f366552b070932c63a1ae582459650c9a82ff'
  name 'Screaming Frog SEO Spider'
  homepage 'https://www.screamingfrog.co.uk/seo-spider/'

  app 'Screaming Frog SEO Spider.app'

  caveats do
    depends_on_java('7+')
  end
end
