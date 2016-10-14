cask 'qlprettypatch' do
  version '1.0'
  sha256 'ae2cb623cc741bf053fdfad0b5f1435c3bbad6d4b3f37d43b407296c46462182'

  url "https://github.com/atnan/QLPrettyPatch/releases/download/v#{version}/QLPrettyPatch.qlgenerator.zip"
  appcast 'https://github.com/atnan/QLPrettyPatch/releases.atom',
          checkpoint: 'bde7fda8ee5fa2d6b878a3353a1a9ee346491dc86f378ff8117bb0457957796e'
  name 'QLPrettyPatch'
  homepage 'https://github.com/atnan/QLPrettyPatch'

  qlplugin 'QLPrettyPatch.qlgenerator'
end
