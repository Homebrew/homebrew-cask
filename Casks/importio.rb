cask 'importio' do
  version :latest
  sha256 :no_check

  # cloudfront.net is the official download host per the vendor homepage
  url 'https://d24s8iufolpmlr.cloudfront.net/FF24/production-builds/import.io.dmg'
  name 'import.io'
  homepage 'https://import.io'
  license :gratis

  app 'import.io.app'

  preflight do
    system '/usr/bin/xar', '-xf', "#{staged_path}/install.pkg", 'importio.pkg/Payload', '-C', staged_path
    system '/usr/bin/tar', '-xf', "#{staged_path}/importio.pkg/Payload", '-C', staged_path
    system '/bin/rm', '-r', "#{staged_path}/importio.pkg", "#{staged_path}/install.pkg"
  end
end
