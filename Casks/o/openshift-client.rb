cask "openshift-client" do
  arch arm: "-arm64"

  version "4.17.18"
  sha256 arm:   "67350fc63cb504e5e2460a74b2ab7e3fb7f04e6a1cf19c287523223cf1d14810",
         intel: "dd04c0dd9024a7cb1a62d18cfb61dd7f6105eef613797d69fd769eb458ae9e1f"

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
