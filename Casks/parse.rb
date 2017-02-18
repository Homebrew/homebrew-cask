cask 'parse' do
  version '3.0.5'
  sha256 '30c305a76beb8913392b74977a6801e817c3477bd3de72ecd1887a8ca57ea888'

  # github.com/ParsePlatform was verified as official when first introduced to the cask
  url "https://github.com/ParsePlatform/parse-cli/releases/download/release_#{version}/parse"
  appcast 'https://github.com/ParsePlatform/parse-cli/releases.atom',
          checkpoint: '07e39670b7193e99e97346f3b3e2c10d79b56285f53544f55d1b86f758d70e63'
  name 'Parse'
  homepage 'https://parseplatform.github.io/'

  container type: :naked

  binary 'parse'

  postflight do
    set_permissions "#{staged_path}/parse", '0755'
  end
end
