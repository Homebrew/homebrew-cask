cask "openshift-client" do
  arch arm: "-arm64"

  version "4.14.11"
  sha256 arm:   "7c24a77af7d28330559d5f5c783d95242d6d263acc01dad4777108fa9d377eae",
         intel: "ab64780860c30125717832139e94a1bc4ec82244e2274b2d8d0677f9b7f7f983"

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
