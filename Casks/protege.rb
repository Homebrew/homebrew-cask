cask 'protege' do
  version '5.5.0-beta-8'
  sha256 'cd69ed7599e896e7796e5686ef416afed6bdfb42e8d679dbe5bb4efa08f748f7'

  # github.com/protegeproject/protege-distribution was verified as official when first introduced to the cask
  url "https://github.com/protegeproject/protege-distribution/releases/download/v#{version}/Protege-#{version}-os-x.zip"
  appcast 'https://github.com/protegeproject/protege-distribution/releases.atom'
  name 'Protégé'
  homepage 'https://protege.stanford.edu/'

  app "Protege-#{version}/Protégé.app"
end
