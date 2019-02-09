cask 'protege' do
  version '5.5.0-beta-9'
  sha256 'caba39e1c84a02a3160c288a9ccb08537ade57f65c73c0b07dae1d7ade4f2f58'

  # github.com/protegeproject/protege-distribution was verified as official when first introduced to the cask
  url "https://github.com/protegeproject/protege-distribution/releases/download/v#{version}/Protege-#{version}-os-x.zip"
  appcast 'https://github.com/protegeproject/protege-distribution/releases.atom'
  name 'Protégé'
  homepage 'https://protege.stanford.edu/'

  app "Protege-#{version}/Protégé.app"
end
