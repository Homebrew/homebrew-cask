cask 'atlassian-companion' do
  version :latest
  sha256 :no_check

  # companion-release-server.us-west-1.prod.public.atl-paas.net was verified as official when first introduced to the cask
  url 'https://companion-release-server.us-west-1.prod.public.atl-paas.net/download/latest/osx'
  name 'Atlassian Companion'
  homepage 'https://www.atlassian.com/software'

  app 'Atlassian Companion.app'
end
