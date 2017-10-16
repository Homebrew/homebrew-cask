cask 'dbeaver-community' do
  version '4.2.3'
  sha256 '200606165f6f603820f6016443d46848ecd8fdf3cb798e747b59119790de4aa5'

  # github.com/serge-rider/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/serge-rider/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/serge-rider/dbeaver/releases.atom',
          checkpoint: 'bd108f25f6e7c15f97fb7c7a6c6ec8d3e9a7eac16fd53268b2f3a34e29606281'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
