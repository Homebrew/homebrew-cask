cask :v1 => 'bowtie' do
  version '1.5'
  sha256 'd8406b066851c0730ca052036bedd5ded82019403de1fd58b579da34cfa4a948'

  url "http://bowtieapp.com/bowtie-#{version}.zip"
  appcast 'http://updates.13bold.com/appcasts/bowtie',
          :sha256 => '006ab04ddddeb487b3b16807d58508549e067baf601656f1f95740791d1cca66'
  homepage 'http://bowtieapp.com/'
  license :gratis

  app "Bowtie #{version}/Bowtie.app"
end
