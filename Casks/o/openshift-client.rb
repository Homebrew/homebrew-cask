cask "openshift-client" do
  arch arm: "-arm64"

  version "4.17.17"
  sha256 arm:   "9587790e067501a42b0b307162741afa6bf805722e40ea0111c0c4e4b51a6868",
         intel: "7995829eaab4d67829ffcd00ea515d70f703f0d3cb2929c8e67e2cb42fa7bf66"

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
