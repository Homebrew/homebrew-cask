cask :v1 => 'spark-dev' do
  version '0.0.16'
  sha256 '4c1aefe14ae9b1bff135e34884e6cd2ca882145730fbe80fc74172bb44e06a82'

  url "https://github.com/spark/spark-dev/releases/download/#{version}/Spark.Dev.app.zip"
  homepage 'https://github.com/spark/spark-dev'
  license :apache

  app 'Spark Dev.app'
end
