cask 'darwindumper' do
  version '3.0.2'
  sha256 '17267226d3b7f6bec761566921cdba1e20c0885dcf3240eb5060fda1e073babc'

  url "https://bitbucket.org/blackosx/darwindumper/downloads/DarwinDumper_v#{version}.zip"
  name 'DarwinDumper'
  homepage 'https://bitbucket.org/blackosx/darwindumper'

  app 'DarwinDumper.app'
end
