cask 'protege' do
  version '5.5.0-beta-4'
  sha256 '7ca43f07b6a6bc086e428bfe1e23d0a725177636a32ee41ca6f1b5bb2f36d9a0'

  # github.com/protegeproject/protege-distribution was verified as official when first introduced to the cask
  url "https://github.com/protegeproject/protege-distribution/releases/download/v#{version}/Protege-#{version}-os-x.zip"
  appcast 'https://github.com/protegeproject/protege-distribution/releases.atom'
  name 'Protégé'
  homepage 'https://protege.stanford.edu/'

  app "Protege-#{version}/Protégé.app"
end
