cask "openshift-client" do
  arch arm: "-arm64"

  version "4.16.13"
  sha256 arm:   "0294c5dcec9d4e049c540f3b9a4cb384a240d9aad77a1a52d638e0c2f8efae4d",
         intel: "331c7ff3a6615e869b7783e1d5a4550de890e6baba207949111841b54d65b942"

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
