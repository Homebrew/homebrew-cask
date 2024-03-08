cask "openshift-client" do
  arch arm: "-arm64"

  version "4.15.2"
  sha256 arm:   "4eb2084a6355df2803bc37fe8c16be48d671247904a4a9c8e1cb493c430c3801",
         intel: "8aa974202f21a3d277bb2852067a10a34552e96c5ee34b9fb9bbfb57520cd2dc"

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
