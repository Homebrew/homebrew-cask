cask 'protege' do
  version '5.5.0-beta-7'
  sha256 '7329053402e0d4a72c2e54deeeaef2006b841b8edd3cf092c9262268fb8094f9'

  # github.com/protegeproject/protege-distribution was verified as official when first introduced to the cask
  url "https://github.com/protegeproject/protege-distribution/releases/download/v#{version}/Protege-#{version}-os-x.zip"
  appcast 'https://github.com/protegeproject/protege-distribution/releases.atom'
  name 'Protégé'
  homepage 'https://protege.stanford.edu/'

  app "Protege-#{version}/Protégé.app"
end
