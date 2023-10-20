cask "openshift-client" do
  arch arm: "-arm64"

  version "4.13.18"
  sha256 arm:   "7c5c95cade80bcb57ac22bfbbf353a167629782ed25ab7b8643027c0cc46017f",
         intel: "45bc328d84fe8b37edacc7f93e5baaee08817e762b0821e0724e01e01fc6177b"

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
