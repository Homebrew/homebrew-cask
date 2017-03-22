cask 'protege' do
  version '5.1.0'
  sha256 '7d7f836236aca50b475111685ad868b86bb6628104af32b7cee1a085faf421f0'

  # github.com/protegeproject/protege-distribution was verified as official when first introduced to the cask
  url "https://github.com/protegeproject/protege-distribution/releases/download/v#{version}/Protege-#{version}-os-x.zip"
  appcast 'https://github.com/protegeproject/protege-distribution/releases.atom',
          checkpoint: '015b97cd269ea62c263f6e647b8a0b435af388ca3bc3fe84dd9b231c795247c7'
  name 'Protégé'
  homepage 'https://protege.stanford.edu/'

  app "Protege-#{version}/Protégé.app"
end
