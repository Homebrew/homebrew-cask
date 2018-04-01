cask 'sysdig-inspect' do
  version '0.2.0'
  sha256 '1c4d8dd87c44362603bcee752d31f3f3f7b2b6677eef6f5d8219dfcfa0607900'

  # download.sysdig.com/stable/sysdig-inspect was verified as official when first introduced to the cask
  url "https://download.sysdig.com/stable/sysdig-inspect/sysdig-inspect-#{version}-mac.dmg"
  appcast 'https://github.com/draios/sysdig-inspect/releases.atom',
          checkpoint: 'fcdc73d10fc08b495dac33350230e7f4df1903856c4695be14716f0709bbdadf'
  name 'Sysdig Inspect'
  homepage 'https://github.com/draios/sysdig-inspect'

  app 'Sysdig Inspect.app'
end
