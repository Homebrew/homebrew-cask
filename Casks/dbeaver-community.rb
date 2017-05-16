cask 'dbeaver-community' do
  version '4.0.7'
  sha256 '81efe5b08a647d13ad82c5fdf0dce24f68895236ace6809aca95a22ce4ba7cec'

  # github.com/serge-rider/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/serge-rider/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/serge-rider/dbeaver/releases.atom',
          checkpoint: 'cf33d8b9037ada42fe7b95a0e1e653d9b6fd3fe9dc624ea5a8c92f11d1114768'
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
