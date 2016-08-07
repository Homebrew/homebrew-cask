cask 'semaphor' do
  version :latest
  sha256 :no_check

  url 'https://spideroak.com/releases/semaphor/osx'
  name 'Semaphor'
  homepage 'https://spideroak.com/solutions/semaphor'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Semaphor.app'
end
