cask "openshift-client" do
  arch arm: "-arm64"

  version "4.13.2"
  sha256 arm:   "0f41efba538fba1fd5afc4471db0e1573976ae95b9e898b8657f7f21ddad7759",
         intel: "acd78bc1b29735c1ece4bbfc37e7598c8760a9a24cb92fc84e19121e9ff9403d"

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
