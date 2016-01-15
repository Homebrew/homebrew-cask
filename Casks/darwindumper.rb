cask 'darwindumper' do
  version '2.9.9.2'
  sha256 '6971211171f5f562ad833ca530173d7783c5211222b2540cd599d47ac7f2576c'

  url "https://bitbucket.org/blackosx/darwindumper/downloads/DarwinDumper_v#{version}.zip"
  name 'DarwinDumper'
  homepage 'https://bitbucket.org/blackosx/darwindumper'
  license :gpl

  app "DarwinDumper_v#{version}/DarwinDumper.app"
end
