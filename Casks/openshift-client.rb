cask "openshift-client" do
  arch arm: "-arm64"

  version "4.11.11"
  sha256 arm:   "44259ba3fdb038bfcea202b10f5bfd9a3fab36d5bea65ff14be21e95a54f4f44",
         intel: "f417de8d455b9ef3900684a04b52373cebbd1a1af4f508fa8ebbfb98bdb33240"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"
end
