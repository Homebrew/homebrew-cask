cask "openshift-client" do
  arch arm: "-arm64"

  version "4.18.14"
  sha256 arm:   "06bfe4c85551b4e0c316587722efe5ce02862fd81dd34f90fa77ff0c335941bb",
         intel: "6486a8832fecc0707c7801a8aa062304e84bd5e8ff47d3b612f12ebd2a7b891b"

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
