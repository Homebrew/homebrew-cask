cask "openshift-client" do
  arch arm: "-arm64"

  version "4.16.12"
  sha256 arm:   "5bb36bb85289db7a2d66dbe1e6249c978b3896c4e1924ff06ef4d4976414ca75",
         intel: "e12ba1a60ddccea7c8c123b3840d82670854af3b951e0c1a5c5d52fd31b64d55"

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
