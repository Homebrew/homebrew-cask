cask 'golly' do
  if MacOS.version <= :mountain_lion
    version '2.6'
    sha256 '6fee35e8e4f63ee2c1b0913b7e8009b2548c4e4469050f9c31791900e1e97f16'

    url "https://downloads.sourceforge.net/golly/golly/golly-#{version}/golly-#{version}-mac106.zip"

    app "golly-#{version}-mac106/Golly.app"
    binary "golly-#{version}-mac106/bgolly"
  else
    version '2.8'
    sha256 '3ee7488591f97547ba69ce52172384f6e9bfd12baf0c1fbf062b17afaf51fafc'

    url "https://downloads.sourceforge.net/golly/golly/golly-#{version}/Golly-#{version}-Mac.dmg"
    appcast 'https://sourceforge.net/projects/golly/rss?path=/golly',
            checkpoint: '5bd057ed02b659d4a6ff2f363bc2dd751f41f7ce4d46ae34c4c35b5d8a6ec49f'

    app "golly-#{version}-mac/Golly.app"
    binary "golly-#{version}-mac/bgolly"
  end

  name 'Golly'
  homepage 'http://golly.sourceforge.net/'
end
