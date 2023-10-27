cask "openshift-client" do
  arch arm: "-arm64"

  version "4.14.0"
  sha256 arm:   "cec2a00e61ade2a39aa8cfc2ba363ed8b4f9747e6442acb3eafca4b6d6c2432f",
         intel: "b0e16569831eb12b2980f23da3f78bd6d0401b106aecd97568d132b6ed0d4bdc"

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
