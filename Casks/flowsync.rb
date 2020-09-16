cask "flowsync" do
  version "3.0.0.1337"
  sha256 "201df0ae0dbdf662f63dff6b161aeb99b2f05cca04e42eb393baf96969e36863"

  # dngo5v6w7xama.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://dngo5v6w7xama.cloudfront.net/connect/download/FlowSync_#{version}.pkg"
  appcast "https://flow.polar.com/start"
  name "Polar FlowSync Software"
  desc "Syncing software for Polar Flow products"
  homepage "https://support.polar.com/uk-en/support/flowsync"

  pkg "FlowSync_#{version}.pkg"

  uninstall pkgutil: "com.polarelectro.pkg.flowsync",
            quit:    "fi.polar.FlowSync"
end
