cask "openshift-client" do
  arch arm: "-arm64"

  version "4.12.5"
  sha256 arm:   "4fcaa20299f39db02429517ac8168f729d5097fcfe01cf5873a19fc80059b446",
         intel: "724e4e391eb82b503510ac9b661fc5cc50d74deee9c738d1a3ee2a028ff6d1ac"

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
