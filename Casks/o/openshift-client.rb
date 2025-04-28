cask "openshift-client" do
  arch arm: "-arm64"

  version "4.18.11"
  sha256 arm:   "968c8765de2ba74fed9e71b62b44b8d5c83b43c5b3c02449318de7094c3e967b",
         intel: "4e33ce86b7f0db2ebdcfb3b1fc4d78c8ab7ebb1359bb2bfc1aba9eb70ec32b8a"

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
