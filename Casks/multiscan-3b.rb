cask 'multiscan-3b' do
  # note: "3b" is not a version number, but an intrinsic part of the product name
  version '1.9.5'
  sha256 'f394f145b8581a855d2d5dfed6ed7e77206d84091895dd0fdfb30bd583d6dcb1'

  url "http://www.qsl.net/kd6cji/downloads/multiscan%203b-v#{version}.zip"
  name 'MultiScan 3B'
  homepage 'http://www.qsl.net/kd6cji/'

  app 'MultiScan 3B.app'
end
