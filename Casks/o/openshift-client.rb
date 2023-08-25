cask "openshift-client" do
  arch arm: "-arm64"

  version "4.13.10"
  sha256 arm:   "fe227aba9b15cadb65802abf38cfa3c09a948c0779afc4e989c998a064e225e6",
         intel: "737305e086ceda9d977370881c0ec69657f432d108273f0bb5827e2783dd4377"

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
