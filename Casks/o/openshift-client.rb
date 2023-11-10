cask "openshift-client" do
  arch arm: "-arm64"

  version "4.14.2"
  sha256 arm:   "3b461e533e7f82475abb7ea4d1e3028ed3e018894121826c857defbbdffbd3f8",
         intel: "38d2a554d3a60ce3f92e34aaabe7dc021d479e7b4ca31d2914fa2f14d9a85e0b"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"

  zap trash: "~/.kube/config"
end
