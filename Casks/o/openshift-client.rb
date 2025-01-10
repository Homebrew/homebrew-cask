cask "openshift-client" do
  arch arm: "-arm64"

  version "4.17.12"
  sha256 arm:   "dd17cd4b3225751916d7bb00a91d29f2651e102fa054c6848ae9b3cbb11a43bd",
         intel: "a70a1775d62ad81a1d754da0958dc8f9719474fa59cbb90be4ab90cfa9aee13e"

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
