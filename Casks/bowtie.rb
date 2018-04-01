cask 'bowtie' do
  version '1.5'
  sha256 'd8406b066851c0730ca052036bedd5ded82019403de1fd58b579da34cfa4a948'

  url "http://bowtieapp.com/bowtie-#{version}.zip"
  appcast 'http://updates.13bold.com/appcasts/bowtie',
          checkpoint: '0a8e17e8ac793ca783e628ddfee1015831bb86fb23683b1011a159016ecfd43d'
  name 'Bowtie'
  homepage 'http://bowtieapp.com/'

  app "Bowtie #{version}/Bowtie.app"
end
