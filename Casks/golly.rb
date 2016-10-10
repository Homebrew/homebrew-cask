cask 'golly' do
  if MacOS.version <= :mountain_lion
    version '2.6'
    sha256 '6fee35e8e4f63ee2c1b0913b7e8009b2548c4e4469050f9c31791900e1e97f16'

    url "https://downloads.sourceforge.net/golly/golly/golly-#{version}/golly-#{version}-mac106.zip"

    app "golly-#{version}-mac106/Golly.app"
    binary "golly-#{version}-mac106/bgolly"
  else
    version '2.8'
    sha256 'be6dff40918b76d985d79d8cfe1a48fcd23ab0df3f3991d82940c1365b06c689'

    url "https://downloads.sourceforge.net/golly/golly/golly-#{version}/golly-#{version}-mac.zip"
    appcast 'https://sourceforge.net/projects/golly/rss?path=/golly',
            checkpoint: '2fa3e061bf65b9a057bc864604b4e4ffcd11c2c7238c61b0fb5cbd75fbe1acfb'

    app "golly-#{version}-mac/Golly.app"
    binary "golly-#{version}-mac/bgolly"
  end

  name 'Golly'
  homepage 'http://golly.sourceforge.net/'

  caveats do
    files_in_usr_local
  end
end
