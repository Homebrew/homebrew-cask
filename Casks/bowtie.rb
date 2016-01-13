cask 'bowtie' do
  version '1.5'
  sha256 'd8406b066851c0730ca052036bedd5ded82019403de1fd58b579da34cfa4a948'

  url "http://bowtieapp.com/bowtie-#{version}.zip"
  appcast 'http://updates.13bold.com/appcasts/bowtie',
          :sha256 => '7d7c49e1eb82e17ec99919d4dfe81bfb82e19adfa356a8f0041ba8540c098735'
  name 'Bowtie'
  homepage 'http://bowtieapp.com/'
  license :gratis

  app "Bowtie #{version}/Bowtie.app"
end
