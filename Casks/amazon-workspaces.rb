cask :v1 => 'amazon-workspaces' do
  version :latest
  sha256 :no_check

  # cloudfront.net is the official download host per the vendor homepage
  url 'https://d2td7dqidlhjx7.cloudfront.net/prod/global/osx/WorkSpaces.pkg'
  name 'Amazon Workspaces'
  homepage 'https://aws.amazon.com/workspaces/'
  license :gratis

  pkg 'WorkSpaces.pkg'

  uninstall :pkgutil => 'com.amazon.workspaces'
end
