cask 'patchwork' do
  version '3.4.0'
  sha256 '9be5a32dbabcdd3ca046afb0032c3de47b3d56bfea269d53d0655445c6ffc2db'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}-mac.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom',
          checkpoint: '4a97057f15b9aff08e08356369003363d3c965ded15a763aa80058c4ce79bb1d'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
