cask 'carbon-copy-cloner' do
  version '4.1.16.4564'
  sha256 '22f7488303ab83540574cada63e34033830c330095086bfd46bbebeb5b5bc4c5'

  url "https://bombich.com/software/download_ccc.php?v=#{version}"
  name 'Carbon Copy Cloner'
  homepage 'https://bombich.com/'

  app 'Carbon Copy Cloner.app'
end
