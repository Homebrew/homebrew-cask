cask 'protege' do
  version '5.0.0'
  sha256 'cc5dc98cb41a59fb86a710a61249437f1f9d1b4b79eb989b1ff5055df0722540'

  # github.com/protegeproject/protege-distribution was verified as official when first introduced to the cask
  url "https://github.com/protegeproject/protege-distribution/releases/download/protege-#{version}/Protege-#{version}-os-x.zip"
  appcast 'https://github.com/protegeproject/protege-distribution/releases.atom',
          checkpoint: '85a7963eb388f3eaca03ab284323423a4c3659fa2939b183c1a46ef222c6293c'
  name 'Protégé'
  homepage 'http://protege.stanford.edu/'

  app "Protege-#{version}/Protégé.app"
end
