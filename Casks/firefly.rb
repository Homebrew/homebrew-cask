cask "firefly" do
  version "0.9.8"
  sha256 "f63c0d34913021f2dc4eb374abd02163613ccaf618497c76b5185a724035b136"

  # raw.githubusercontent.com was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/cdtmirrors/yhc/master/yhc.dmg"
  name "Firefly"
  desc "Proxy software to help circumventing the Great Firewall"
  homepage "https://github.com/yinghuocho/firefly-proxy"

  app "Firefly.app"
end
