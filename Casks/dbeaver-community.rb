cask 'dbeaver-community' do
  version '5.0.1'
  sha256 'f9cd352f0d3038f28a7bc674dca6e91e0b2d76db8c0e366ff883fb462f81a95a'

  # github.com/dbeaver/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/dbeaver/dbeaver/releases.atom',
          checkpoint: 'd06f45f5e6715f4ec2ccca8a75069b83013817c452afa3fbd58edea017a52cc8'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
