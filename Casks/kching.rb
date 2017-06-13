cask 'kching' do
  version '1.0.0'
  sha256 '136f544a784d4bc6a8a01e5b2726fdde575ffd43c9cd24cd13e5aa1ea9fe9940'

  url "https://github.com/skarnecki/kching/releases/download/#{version.major_minor}/kching-#{version}.tar.gz"
  appcast 'https://github.com/skarnecki/kching/releases.atom',
          checkpoint: '9bac14b267f15bd6eb03d01e9ff2fa1a4102d9ada94bfa93c4580835e608c236'
  name 'kching'
  homepage 'https://github.com/skarnecki/kching'

  app 'kching.app'
end
