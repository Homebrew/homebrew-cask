cask 'bowtie' do
  version '1.5'
  sha256 'd8406b066851c0730ca052036bedd5ded82019403de1fd58b579da34cfa4a948'

  url "http://bowtieapp.com/bowtie-#{version}.zip"
  appcast 'http://updates.13bold.com/appcasts/bowtie',
          checkpoint: '801fdd497d1912b1446627c35d400a6a26bf5ffe430fb10ae8ec0695984bc98c'
  name 'Bowtie'
  homepage 'http://bowtieapp.com/'
  license :gratis

  app "Bowtie #{version}/Bowtie.app"
end
