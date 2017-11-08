cask 'parallels-toolbox' do
  version '2.0.2-1213'
  sha256 '6c11c2bae46dbe7138cf48a921ca595bedec91b977153ea1908484af36d0d0eb'

  url 'https://www.parallels.com/try/toolbox/'
  name 'Paralells Toolbox'
  homepage 'https://www.parallels.com/products/toolbox/'

  installer script: "#{staged_path}/Install Parallels Toolbox.app/Contents/MacOS/Parallels Toolbox"

  uninstall quit:   [
                      'com.parallels.toolbox',
                    ],
            delete: '/Applications/Parallels Access.app'

  zap delete: '~/Library/Group Containers/4C6364ACXT.com.parallels.toolbox'
end
