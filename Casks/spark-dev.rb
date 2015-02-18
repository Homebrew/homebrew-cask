cask :v1 => 'spark-dev' do
  version '0.0.20'
  sha256 'f2fa70e23590c6b57f1415dabee56f60671637526fd0348fdd019d1304b341ff'

  url "https://github.com/spark/spark-dev/releases/download/v#{version}/spark-dev-mac.zip"
  homepage 'https://github.com/spark/spark-dev'
  license :apache

  app 'Spark Dev.app'
end
