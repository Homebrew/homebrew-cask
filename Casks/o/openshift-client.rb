cask "openshift-client" do
  arch arm: "-arm64"

  version "4.13.14"
  sha256 arm:   "460e12ca3e83100370802439a87e842c2a433d1cc48840031c2760f310f5a724",
         intel: "c6a43d70b467d118d477fd78774482ae491ffd03890c7b5bd677cd2533433bf5"

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
