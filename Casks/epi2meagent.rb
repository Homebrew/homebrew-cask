cask 'epi2meagent' do
  version '2.52.1202033'
  sha256 '06b94d9d11e31b44b28bd4e52fd68327aa59d8e3a07953527c6192b099620e44'

  # oxfordnanoportal.com was verified as official when first introduced to the cask
  url 'https://mirror.oxfordnanoportal.com/software/metrichor-agent/epi2me-agent-2.52.1202033.dmg'
  name 'EPI2ME Agent'
  homepage 'https://metrichor.com/'

  app 'EPI2MEAgent.app'
end
