cask 'parse' do
  version '3.0.5'
  sha256 '30c305a76beb8913392b74977a6801e817c3477bd3de72ecd1887a8ca57ea888'

  # github.com/parse-community was verified as official when first introduced to the cask
  url "https://github.com/parse-community/parse-cli/releases/download/release_#{version}/parse"
  appcast 'https://github.com/parse-community/parse-cli/releases.atom',
          checkpoint: '028a2ba1e6a24b6cc7735aec49a3f60c076613a2160d9272c1fe3230cc952be2'
  name 'Parse'
  homepage 'http://parseplatform.org/'

  container type: :naked

  binary 'parse'
end
