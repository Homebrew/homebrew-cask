cask "openshift-client" do
  arch arm: "-arm64"

  version "4.16.4"
  sha256 arm:   "d33c5b4e3e7a8cfff163f48fad1339ae5e1508efba4d0352f329010a3424b7c2",
         intel: "81c8d0fbebbe6bda8d3722445e3aac30482b0cfe3d585dc34e17dc9f9be40135"

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
