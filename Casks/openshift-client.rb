cask "openshift-client" do
  arch arm: "-arm64"

  version "4.11.17"
  sha256 arm:   "48dba025a8c0bca9c358e89e4d5c4083a44a54400fbc4920c0ca7bba4c50f2e9",
         intel: "17a1bcb309947f51aa4d57f2ca7526f9479d6790d4897e066bad096711820d5f"

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
