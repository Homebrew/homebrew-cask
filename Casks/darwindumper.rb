cask :v1 => 'darwindumper' do
  version '2.9.8'
  sha256 '7ac65b9d3700df8b8a49d1819bb8f6e42a6a6fb0fd4a2257e500fd04594002fc'

  url "https://bitbucket.org/blackosx/darwindumper/downloads/DarwinDumper_v#{version}.zip"
  name 'DarwinDumper'
  homepage 'https://bitbucket.org/blackosx/darwindumper'
  license :gpl

  app "DarwinDumper_v#{version}/DarwinDumper.app"
end
