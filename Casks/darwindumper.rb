cask 'darwindumper' do
  version '3.0.2'
  sha256 '17267226d3b7f6bec761566921cdba1e20c0885dcf3240eb5060fda1e073babc'

  url "https://bitbucket.org/blackosx/darwindumper/downloads/DarwinDumper_v#{version}.zip"
  appcast 'https://api.bitbucket.org/2.0/repositories/blackosx/darwindumper/downloads',
          checkpoint: '09770d7879d75643e398ae84951c81ae5bdbd5b51be70ae7514bf2d6744acb7d'
  name 'DarwinDumper'
  homepage 'https://bitbucket.org/blackosx/darwindumper'

  app 'DarwinDumper.app'
end
