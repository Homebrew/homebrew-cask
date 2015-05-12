cask :v1 => 'spark-dev' do
  version '0.0.22'
  sha256 '38fc0e9ad89fc04d07d0de460d9977830af62391aa637e9e7a29bae64ba6f007'

  url "https://github.com/spark/spark-dev/releases/download/v#{version}/spark-dev-mac.zip"
  appcast 'https://github.com/spark/spark-dev/releases.atom'
  name 'Spark Dev'
  homepage 'https://github.com/spark/spark-dev'
  license :apache

  app 'Spark Dev.app'
end
