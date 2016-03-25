cask 'gitup' do
  version '1.0.4'
  sha256 '756222e40bb125e5e0e3231b7a5ada035c73a0461e67ce09475fb0324dd7de76'

  # s3-us-west-2.amazonaws.com/gitup-builds was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/gitup-builds/stable/GitUp.zip'
  appcast 'https://github.com/git-up/GitUp/releases.atom',
          checkpoint: '6d7967f3e3e93fce6596c760ed4ca3989b8c02077c7b0b18c4ff127e5723fda3'
  name 'GitUp'
  homepage 'http://gitup.co'
  license :gpl

  depends_on macos: '>= :mountain_lion'

  app 'GitUp.app'
  binary 'GitUp.app/Contents/SharedSupport/gitup'
end
