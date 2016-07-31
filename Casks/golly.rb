cask 'golly' do
  if MacOS.release <= :mountain_lion
    version '2.6'
    sha256 '6fee35e8e4f63ee2c1b0913b7e8009b2548c4e4469050f9c31791900e1e97f16'

    url "https://downloads.sourceforge.net/project/golly/golly/golly-#{version}/golly-#{version}-mac106.zip"

    app "golly-#{version}-mac106/Golly.app"
    binary "golly-#{version}-mac106/bgolly"
  else
    version '2.7'
    sha256 'ebcbea756ffaafb1b2e122ebe81781cbbe3f8245ae36387437653b8e9c8b8272'

    url "https://downloads.sourceforge.net/project/golly/golly/golly-#{version}/golly-#{version}-mac109.zip"

    app "golly-#{version}-mac109/Golly.app"
    binary "golly-#{version}-mac109/bgolly"
  end

  appcast 'https://sourceforge.net/projects/golly/rss',
          checkpoint: 'caa56eb8c7b5d761c6f921f2a52e6cfdf0c9cb571437148762190380b0d75e7a'
  name 'Golly'
  homepage 'http://golly.sourceforge.net/'
  license :gpl

  caveats do
    files_in_usr_local
  end
end
