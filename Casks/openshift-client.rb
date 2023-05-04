cask "openshift-client" do
  arch arm: "-arm64"

  version "4.12.16"
  sha256 arm:   "4896bb283d85b9048f41cee7d0876f9f399a9d8eb19410be45dbd733f9cd0d6a",
         intel: "2e41ef04e298eb9ae93566a69186ab7d3a6b89662d2521824094c15ef40dd58d"

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
