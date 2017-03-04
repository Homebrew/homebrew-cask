cask 'minizincide' do
  version '2.1.3'
  sha256 'a4ec64bee9a04702f02bd82cdd182843f373d9f2986d11c580f3dc6e1dfd3d81'

  # github.com/MiniZinc/MiniZincIDE was verified as official when first introduced to the cask
  url "https://github.com/MiniZinc/MiniZincIDE/releases/download/#{version}/MiniZincIDE-#{version}-bundled.dmg"
  appcast 'https://github.com/MiniZinc/MiniZincIDE/releases.atom',
          checkpoint: '9593f8dba4def26ae00a1ddb5e6eb11bca329a88b6b6ad199322a682187b6548'
  name 'MiniZincIDE'
  homepage 'https://www.minizinc.org/ide/index.html'

  app 'MiniZincIDE.app'
end
