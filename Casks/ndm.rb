cask 'ndm' do
  version '0.0.3-beta'
  sha256 '19055224bbbc3dd36f272ef552142b49425d8a2fffda2b407045b8d8f6257ec6'

  # github.com/720kb/ndm was verified as official when first introduced to the cask
  url "https://github.com/720kb/ndm/releases/download/#{version}/ndm-#{version}.dmg"
  appcast 'https://github.com/720kb/ndm/releases.atom',
          checkpoint: '0db6ec7462676831c0922f595d653df6f903a49a540d41c81f0b6f5e1c2212b1'
  name 'ndm'
  homepage 'https://720kb.github.io/ndm'

  app 'ndm.app'
end
