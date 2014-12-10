cask :v1 => 'protege' do
  version '4.3.0'
  sha256 '45f5acb42b8bb78074af6e192a2dc12e5c2b8238ac20e6c96a4bca7b2acaf598'

  url "http://protege.stanford.edu/download/protege/4.3/osx/protege-#{version}-304.zip"
  homepage 'http://protege.stanford.edu/'
  license :unknown    # todo: improve this machine-generated value

  app 'protege-4.3.app'
end
