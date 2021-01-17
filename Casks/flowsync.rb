cask "flowsync" do
  version "3.0.0.1337"
  sha256 "201df0ae0dbdf662f63dff6b161aeb99b2f05cca04e42eb393baf96969e36863"

  url "https://dngo5v6w7xama.cloudfront.net/connect/download/FlowSync_#{version}.pkg",
      verified: "dngo5v6w7xama.cloudfront.net/"
  name "Polar FlowSync Software"
  desc "Syncing software for Polar Flow products"
  homepage "https://support.polar.com/uk-en/support/flowsync"

  livecheck do
    url "https://flow.polar.com/start"
    strategy :page_match
    regex(%r{href=.*?/FlowSync_(\d+(?:\.\d+)*)\.pkg}i)
  end

  pkg "FlowSync_#{version}.pkg"

  uninstall pkgutil: "com.polarelectro.pkg.flowsync",
            quit:    "fi.polar.FlowSync"
end
