cask 'dbeaver-community' do
  version '5.0.3'
  sha256 '70773ed3813bcf65bc3ff0f056bbd259894830d0df8eff7f23c8e5092e4c805f'

  # github.com/dbeaver/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/dbeaver/dbeaver/releases.atom',
          checkpoint: '23a03c8bff672def71514488f19922cbee6e7e62593fd216f148ab9989cda458'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
