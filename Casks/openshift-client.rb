cask "openshift-client" do
  arch arm: "-arm64"

  version "4.12.1"
  sha256 arm:   "98836297e7ebc199995798a94d91992b113d3a37b1ff206e721a68e75cceff6a",
         intel: "4f00af972fe7fe66e01324d4db8004ccf794d7eabf7a7d2e2ae0a0c31e834abe"

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
