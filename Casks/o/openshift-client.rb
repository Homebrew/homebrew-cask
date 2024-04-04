cask "openshift-client" do
  arch arm: "-arm64"

  version "4.15.7"
  sha256 arm:   "71cdc1238eed8d53d50a6a88f79a8b725f0fc1540c149b8eb252cd90aaa44233",
         intel: "4ed1c3ce040cf72b0038a17093f9168067595ec074c42c1efaaebd37143d7e08"

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
