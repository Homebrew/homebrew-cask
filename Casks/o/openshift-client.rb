cask "openshift-client" do
  arch arm: "-arm64"

  version "4.18.10"
  sha256 arm:   "f698d31da9b760d9ba465d43036f46bc169c90dfb264750c544cf987b9d9e9c5",
         intel: "d69beb2713eac9df65d09225ef75b667174ed37f508f85befd6d9122e0501517"

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
