cask 'darwindumper' do
  version '3.0.3'
  sha256 '15eca11d9c03c4af0ceb335efb844db02eb1a5ad1ce85691ec6ea7c6c30c7148'

  url "https://bitbucket.org/blackosx/darwindumper/downloads/DarwinDumper_v#{version}.zip"
  name 'DarwinDumper'
  homepage 'https://bitbucket.org/blackosx/darwindumper'

  app 'DarwinDumper.app'
end
