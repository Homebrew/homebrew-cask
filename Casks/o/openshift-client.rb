cask "openshift-client" do
  arch arm: "-arm64"

  version "4.16.6"
  sha256 arm:   "3da2e8341924b1037bb710be4034d58f7f452f8d3fa5a3162d31c12923d2e410",
         intel: "ff3988a72499145a6a8170feda8a43913bae754b05bd8c8e4c24c98bf5e5d779"

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
