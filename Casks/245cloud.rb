cask '245cloud' do
  version '1.1.1'
  sha256 'ee6c0d63581efbfc494d058a3056500d694a6b8ae906d74c0d76b9227690ddd6'

  # github.com/fukajun/245cloud-app was verified as official when first introduced to the cask
  url "https://github.com/fukajun/245cloud-app/releases/download/v#{version}/245cloud-#{version}-darwin-x64.zip"
  appcast 'https://github.com/fukajun/245cloud-app/releases.atom'
  name '245cloud'
  homepage 'https://245cloud.com/'

  app '245cloud-darwin-x64/245cloud.app'
end
