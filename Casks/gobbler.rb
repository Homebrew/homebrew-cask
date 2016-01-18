cask 'gobbler' do
  version :latest
  sha256 :no_check

  url 'https://app.gobbler.com/download_latest_redirect?product_version=2'
  name 'Gobbler'
  homepage 'https://app.gobbler.com'
  license :gratis

  installer manual: 'Gobbler.app'

  uninstall script: {
                      executable: '/Library/Gobbler/Uninstaller/uninstall_gobbler.sh',
                      args:       ['-f'],
                    }
end
