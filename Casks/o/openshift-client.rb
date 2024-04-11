cask "openshift-client" do
  arch arm: "-arm64"

  version "4.15.9"
  sha256 arm:   "9fa2fcf515cc72ff533597f458798407cbe2f288662ca6029bf5f014656e5239",
         intel: "1ffb0c629fc29ad053731e469fe4e61d6380307857c9f787170e3c5758bc0c94"

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
