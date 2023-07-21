cask "openshift-client" do
  arch arm: "-arm64"

  version "4.13.6"
  sha256 arm:   "514b6d3f0208722e0015ef7d85112f5c56eb86e4b21aae8429977d40e5c3a2d4",
         intel: "53bab93cc2255fc8ee9bea4d45c909e6d054fa6aaa7e39f7fa585a60bd49270e"

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
