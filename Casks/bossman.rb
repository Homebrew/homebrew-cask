cask 'bossman' do
  version '0.0.1'
  sha256 'ae33e81729aa9f014bbb02a295f0bbd5d145042f7e98f2d30baa5af8c8752f03'

  url "https://github.com/ianclarksmith/Bossman/releases/download/#{version}/Bossman.zip"
  appcast 'https://github.com/ianclarksmith/Bossman/releases.atom',
          checkpoint: 'f682f7274122f138acf357d2214a91e11466ea840e04c39b73ca1b32ceb08a44'
  name 'Bossman'
  homepage 'https://github.com/ianclarksmith/Bossman'

  depends_on formula: 'tmux'

  app 'Bossman.app'
end
