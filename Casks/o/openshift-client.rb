cask "openshift-client" do
  arch arm: "-arm64"

  version "4.18.2"
  sha256 arm:   "fb50b8759fedad668bcc74f40036ade2388871e95c901ed99d83f04778f07ecb",
         intel: "5aece6ca375e1430a4e81d294a15406e701ff0d77878538a23ae2ba923a09335"

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
