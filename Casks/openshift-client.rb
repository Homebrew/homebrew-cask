cask "openshift-client" do
  arch arm: "-arm64"

  version "4.11.5"
  sha256 arm:   "de104809e9708a1c664c4dba5347b09a5c1e30178fb1bf256cc25af741331710",
         intel: "a3c9e13e31126cdb359b693a60ed3e27bb5b77c790920986b00b34b16da9f381"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"
end
