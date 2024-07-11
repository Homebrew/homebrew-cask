cask "openshift-client" do
  arch arm: "-arm64"

  version "4.16.3"
  sha256 arm:   "1418af2fea261e40d63f3194a0a5a517d94e34d7c682cb3e781a513ef8efe0b0",
         intel: "daaa4ac71947e8962a911f182be81d7cf8884ecbcf6c75895f01f1f13fc01ed1"

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
