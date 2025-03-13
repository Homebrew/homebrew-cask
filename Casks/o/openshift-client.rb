cask "openshift-client" do
  arch arm: "-arm64"

  version "4.18.5"
  sha256 arm:   "fce9a942f9358a5acb1717f0233cc5d0cbec3ed086a0e3b0cdd7ea7aa3d95b2b",
         intel: "1da498d5080daffedd85aadee38a502640ce1d2d9d47a5ce980e49b6f509cb1d"

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
