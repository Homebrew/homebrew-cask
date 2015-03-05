cask :v1 => 'foldit' do
  version :latest
  sha256 :no_check

  url 'https://fold.it/portal/download/osx'
  homepage 'http://fold.it'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'FoldIt.app'
end
