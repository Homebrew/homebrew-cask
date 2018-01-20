cask 'importio' do
  version :latest
  sha256 :no_check

  # d24s8iufolpmlr.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d24s8iufolpmlr.cloudfront.net/FF24/production-builds/import.io.dmg'
  name 'import.io'
  homepage 'https://www.import.io/'

  app 'import.io.app'

  preflight do
    system_command '/usr/bin/xar', args: ['-xf', "#{staged_path}/install.pkg", 'importio.pkg/Payload', '-C', staged_path]
    system_command '/usr/bin/tar', args: ['-xf', "#{staged_path}/importio.pkg/Payload", '-C', staged_path]
    system_command '/bin/rm', args: ['-r', "#{staged_path}/importio.pkg", "#{staged_path}/install.pkg"]
  end

  zap trash: '~/Library/Containers/import.io'
end
