cask 'protege' do
  version '4.3.0-304'
  sha256 '45f5acb42b8bb78074af6e192a2dc12e5c2b8238ac20e6c96a4bca7b2acaf598'

  url "http://protege.stanford.edu/download/protege/#{version.to_f}/osx/protege-#{version}.zip"
  name 'Protégé'
  homepage 'http://protege.stanford.edu/'
  license :bsd

  app "protege-#{version.to_f}.app"
end
