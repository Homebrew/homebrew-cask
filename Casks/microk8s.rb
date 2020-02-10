cask 'microk8s' do
  version '1.0.0'
  sha256 '7b76b7d92ab22449adb9b5498de0a50c9e2cd3c43d8adf46553ea7d5ab16948a'

  # ci.appveyor.com/api/buildjobs/as9al9cljdo5ugmf/artifacts/microk8s.tgz was verified as official when first introduced to the cask
  url 'https://ci.appveyor.com/api/buildjobs/as9al9cljdo5ugmf/artifacts/microk8s.tgz'
  name 'MicroK8s'
  homepage 'https://microk8s.io/'

  binary 'microk8s'
end
