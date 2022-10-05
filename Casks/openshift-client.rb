cask "openshift-client" do
  arch arm: "-arm64"

  version "4.11.8"
  sha256 arm:   "3334fa106939100038b5b5da8696801608222b42dbcb2fe7e833b50ddfcdc946",
         intel: "7d4f344ebf02bd7d2f58ea2ec01ac85b4e942a351c68dea37eeb5c499a131681"

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
