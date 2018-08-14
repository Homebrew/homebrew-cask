cask 'protege' do
  version '5.2.0'
  sha256 'a6f1c06f8740489c51245683e50493d62b7b019ffc409c137eb511a8d1d140be'

  # github.com/protegeproject/protege-distribution was verified as official when first introduced to the cask
  url "https://github.com/protegeproject/protege-distribution/releases/download/v#{version}/Protege-#{version}-os-x.zip"
  appcast 'https://github.com/protegeproject/protege-distribution/releases.atom'
  name 'Protégé'
  homepage 'https://protege.stanford.edu/'

  app "Protege-#{version}/Protégé.app"
end
