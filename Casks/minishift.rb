cask 'minishift' do
  version '1.11.0'
  sha256 'e1012a1fe783f76f9a1548784c9c602d2605d0e84ca8259ad90835901edb18dd'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: '817b471f772b0ddc749de250edfead2af9aa257da800b5d1040c969bd85ea622'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
